#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include <vector>
#include <limits>

#include <cstdio>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>

int   			DURATION 	 = 2; //here. get from path
std::string 	video_string = " ";
int 			NUM_SEG_IN_VIDEO;

const std::string PATHS_FILE = "/home/minh/HTTP2_src/server/git/nghttp2_ATHENA/H2BR_journal/results_dir_list_HEVC.txt";
const std::string DIRECTION_OUT = "/home/minh/HTTP2_src/server/git/nghttp2_ATHENA/H2BR_journal/QoE_ITU/";

std::vector<std::string> folders_recorder;
std::vector<double> 	 PSNR_recorder;


std::vector<std::string> direction;
std::vector<int> re_bitrate_vector;

struct Videos {
	std::string 			video_name;
	std::vector<int> 		bitrate_set;
	std::vector<double> 	psnr_map[4];	// 4 representations
};

const int NUM_VIDEO_SUPPORTED = 2;
struct Videos video[NUM_VIDEO_SUPPORTED];

void Initialize(){
	video[0].video_name = "racenight";
	video[0].bitrate_set = {1800, 5400, 9000, 18000};
	switch(DURATION){
		case 1:
			video[0].psnr_map[0] ={42.2944, 40.697, 39.8979, 38.9547, 38.2345, 38.1144, 36.1992, 36.3353, 40.2806, 42.003, 44.0502, 44.5973};
			video[0].psnr_map[1] ={44.5102, 43.4391, 43.1839, 42.6863, 42.0706, 42.1085, 40.7586, 41.314, 43.7137, 43.7323, 44.8892, 45.3091};
			video[0].psnr_map[2] ={43.8632, 43.1769, 43.0953, 42.8693, 42.5037, 42.5414, 41.5459, 42.0438, 43.3699, 42.9123, 43.6, 43.9209};
			video[0].psnr_map[3] ={38.5633, 38.3605, 38.3299, 38.322, 38.2082, 38.1876, 37.8718, 37.8832, 38.1675, 37.8054, 37.923, 38.0104};
			break;
		case 2:
			std::cout << "this video is not support psnr map get. Sorry :));\n";
			break;
		default:
			break;
	}
	
}

void get_file_paths(){
/*
*****1s-AGG-SQUAD*****
/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/Squad_Aggressive/191218_1402/
*/
	std::cout << "Get file paths: " << std::endl;

	std::ifstream path_file (PATHS_FILE);
	std::string str;

	while(std::getline(path_file, str)){
		// std::cout << "size: " <<  str.size() << std::endl;
		if (str.size() > 0 && str.at(0) == '/'){
			direction.push_back(str);
			std::cout << str << std::endl;
		}
	}
}

void get_bitrate_vector(std::string m_DIRECTION){
	std::cout << "Getting Bitrate vector " << std::endl;
	// input file
	std::ifstream file (m_DIRECTION + "/statistic.ods");

	// variable to store line data
	std::string str;
	std::vector<std::string> temp;
	int i = 2;

	std::cout << "SEGMENT DURATION of video: " << DURATION << std::endl;
	int max_segment = 300000/DURATION;


	// skip the first line and delete all old data from the previous direction
	re_bitrate_vector.clear();

	file.ignore ( std::numeric_limits<std::streamsize>::max(), '\n' );
	while (std::getline(file, str) && i <= max_segment){
		if (str.size() > 0){
			boost::split(temp, str, boost::is_any_of("\t,"));
			re_bitrate_vector.push_back(std::stoi(temp[2]));
			i++;			
		}
	}

}

int get_bitrate_index(std::string video_string, int bitrate){
	int output = -1;
	std::vector<int> bitrate_set;
	for (int i = 0; i < NUM_VIDEO_SUPPORTED; i++){
		if (!video_string.compare(video[i].video_name)){	// same
			bitrate_set = video[i].bitrate_set;
		}
	}

	for (int i = 0; i < bitrate_set.size(); i++){
		if (bitrate == bitrate_set.at(i)){
			output = i;
			return output;
		}
	}
	std::cerr << "No bitrate for this video. Bitrate " << bitrate << " . Video: " << video_string << std::endl;
}


double get_psnr(std::vector<int> bitrate_recorder, std::string video_string){
	std::vector<double> m_psnr_map;
	double avg_psnr = 0;
	int video_idx = -1;
	int bitrate_idx = -1;

	for (int i = 0; i < NUM_VIDEO_SUPPORTED; i++){
		if (!video_string.compare(video[i].video_name)){	// same
			video_idx = i;
		}
	}

	for (int i = 0; i < bitrate_recorder.size(); i ++){
		bitrate_idx = get_bitrate_index(video_string, bitrate_recorder.at(i));
		avg_psnr += video[video_idx].psnr_map[bitrate_idx].at(i%(video[video_idx].psnr_map[bitrate_idx].size()));
		
		// std::cout << "seg: " << i 
		// 		  << " PSRN: " << video[video_idx].psnr_map[bitrate_idx].at(i%(video[video_idx].psnr_map[bitrate_idx].size())) << std::endl;
	}

	return avg_psnr/bitrate_recorder.size();
}

std::string get_folder(std::string m_direction){
	std::vector<std::string> temp;
	boost::split(temp, m_direction, boost::is_any_of("/"));
	std::string output = temp.at(temp.size()-1);
	std::cout << "folder: " << output << std::endl;
	return output;
}

int main(){
	std::cout << "What's the segment duration? ";
	std::cin >> DURATION;
	std::cout << "What's the video? (racenight, bbb) ";
	std::cin >> video_string;

	Initialize();
	get_file_paths();

	for (int i = 0; i < direction.size(); i++){
		std::string m_cur_direction = direction.at(i);
		std::cout << "\n\nReading this path: " << m_cur_direction << std::endl;

		get_bitrate_vector(m_cur_direction);
		PSNR_recorder.push_back(get_psnr(re_bitrate_vector, video_string));
		folders_recorder.push_back(get_folder(m_cur_direction));

		std::cout << "\tAvg. PSNR: " << PSNR_recorder.at(PSNR_recorder.size()-1) << std::endl;
	}

	// log created files
	std::ofstream PSNR_results;
	PSNR_results.open(DIRECTION_OUT + "PSNR_results.txt");
	
	if (folders_recorder.size() != PSNR_recorder.size()){
		std::cerr << "Size of folders and QOE score is not the same" << std::endl;
		exit(EXIT_FAILURE);
	}

	for (auto n = PSNR_recorder.begin(); n != PSNR_recorder.end(); n++){
		PSNR_results << *n << '\t';
	}
	PSNR_results << '\n';

	for (auto n = folders_recorder.begin(); n != folders_recorder.end(); n++){
		PSNR_results << *n << '\t';
	}
	
	folders_recorder.clear();
	PSNR_results.close();
	std::cout << "*************************" << std::endl;

	return 0;
}
