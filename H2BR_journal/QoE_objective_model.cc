/* compute QoE score based on TIN QoE model:
 * X. Yin, A. Jindal, V. Sekar, and B. Sinopoli. 2015. A control-theoretic approach for dynamic adaptive video stream-
 * ing over HTTP. SIGCOMM Comput. Commun. Rev. 45, 4 (Aug. 2015), 325–338. DOI:https://doi.org/10.1145/2829988.
 * 2787486
 * QoE = Sum of qualities - Sum of switches - Total stall - Total startup delay
*/

#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include <vector>
#include <limits>

#include <cstdio>
#include <memory>
#include <stdexcept>
#include <array>
#include <cstdlib>

const int   DURATION 			= 1;
const int 	MAX_SEGMENT 		= 300;
const std::string PATHS_FILE = "/home/minh/HTTP2_src/server/git/nghttp2_ATHENA/H2BR_journal/results_dir_list_HEVC.txt";
const std::string DIRECTION_OUT = "/home/minh/Documents/ITU-T_QoE/itu-p1203/minh_retransmission/";

std::vector<std::string> direction;

std::vector<double> time_stamp_vector;
std::vector<double> buffer_vector;

std::vector<int> re_bitrate_vector;

std::vector<double> stall_time_duration_vector;
std::vector<double> stall_time_stamp;

double	startup_delay = 0;
double 	sum_stall = 0;

int   get_quality_from_bitrate(int bitrate){
	return bitrate;
}

void  get_segment_quality(std::string DIRECTION){
	std::cout << "[INFO]: " << __func__ << "()" << std::endl;

	// input file
	std::ifstream file (DIRECTION + "statistic.ods");

	// variables to store line data
	std::string str;
	std::vector<std::string> temp;
	int i = 2;


	std::cout << "\tSEGMENT DURATION: " << DURATION << std::endl;

	// Delete all old data from the previous direction
	time_stamp_vector.clear();
	re_bitrate_vector.clear();
	buffer_vector.clear();

	// skip the first line
	file.ignore ( std::numeric_limits<std::streamsize>::max(), '\n' );

	while (std::getline(file, str) && i <= MAX_SEGMENT){
		// std::cout << "string: " << str << std::endl;
		if (str.size() > 0){
			boost::split(temp, str, boost::is_any_of("\t,"));
			time_stamp_vector.push_back(std::stod(temp[0]));
			re_bitrate_vector.push_back(std::stoi(temp[2]));
			buffer_vector.push_back(std::stod(temp[4]));

			i++;			
		}
	}
}

void get_stall_duration(){
	std::cout << "[INFO] " << __func__ << std::endl;

	// delete all data from the previous direction
	stall_time_stamp.clear();
	stall_time_duration_vector.clear();

	double 	m_total_duration_time = 0;

	// define startup delay
	int k = 0;
	while ((int) buffer_vector.at(k) - buffer_vector.at(k) == 0){
		k++;
	}
	startup_delay = time_stamp_vector.at(k-1);
	std::cout << "\tStartup delay [s]: " << startup_delay << std::endl;

	// get stall duration
	for (int i = k; i < buffer_vector.size(); i ++){
		if (buffer_vector.at(i) <= DURATION){

			std::cout << "\t Current buffer at seg. " << i << ": " << buffer_vector.at(i) << std::endl;
			std::cout << "\t previous buffer at seg. " << i-1 << ": " << buffer_vector.at(i) << std::endl;

			stall_time_stamp.push_back(time_stamp_vector.at(i));
			int j = 1;
			while (buffer_vector.at(i+j) == 0 || buffer_vector.at(i+j) - buffer_vector.at(i+j-1) == DURATION){
				std::cout << i+j << std::endl;
				++j;
			}

			double end_stall =  time_stamp_vector.at(i+j);
			double start_time = time_stamp_vector.at(i-1) + buffer_vector.at(i-1);

			std::cout << "\tstall_start [s]: " << start_time << " at " << i;
			std::cout << "\tstall_end [s]: " << end_stall << " at " << i + j << std::endl;
			stall_time_duration_vector.push_back(end_stall - start_time);

			sum_stall += end_stall - start_time;
			std::cout << "\tStall duration [s]: " << end_stall - start_time << std::endl; 
		}
	}
}

double get_QoE_score(){
	std::cout << __func__ << std::endl;
	const int sigma_1 = 1;
	const int sigma_2 = 18000;
	const int sigma_3 = 18000;

	double sum_quality 	= 0;
	double sum_switch 	= 0;
	double sum_stall  	= 0;

	double final_qoe_score = 0;
	// first term: average bitrate level 
	for (int i = 0; i < re_bitrate_vector.size(); i++){
		sum_quality += get_quality_from_bitrate(re_bitrate_vector.at(i));
	}

	// second term: switches
	for (int i = 0; i < re_bitrate_vector.size()-1; i++){
		sum_switch += abs(get_quality_from_bitrate(re_bitrate_vector.at(i+1)) - 
							get_quality_from_bitrate(re_bitrate_vector.at(i)));
	}

	final_qoe_score = sum_quality - sigma_1*sum_switch - sigma_2*sum_stall - sigma_3*startup_delay;
	return final_qoe_score;
}

int main(){
	std::string direction = "/home/minh/ownCloud/Documents/1_Proposal/1_Retransmission/3_Journal/Experimental-Results/H2BR_HEVC/NETWORK_4G/PL_0/SD_1000ms/ABR_AGG/RETRANS_PROPOSAL_STANDARD/2020-07-16_233031/";
	double QoE_score = 0;
	
	get_segment_quality(direction);
	get_stall_duration();
	QoE_score = get_QoE_score();
	std::cout << "QoE_Score: " << QoE_score << std::endl;
	return 0;
}