#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include <vector>
#include <limits>

#include <cstdio>
#include <memory>
#include <stdexcept>
// #include <string>
#include <array>

int   			DURATION 	= 2; //here. get from path
std::string 	video 		= " ";
std::string 	FPS 		= "30.0";
const std::string CODEC 	= "\"hevc\"";

const std::string PATHS_FILE = "/home/minh/HTTP2_src/server/git/nghttp2_ATHENA/H2BR_journal/results_dir_list_HEVC.txt";
const std::string DIRECTION_OUT = "/home/minh/HTTP2_src/server/git/nghttp2_ATHENA/H2BR_journal/QoE_ITU/";

std::vector<std::string> folders_recorder;
std::vector<double> 	 QoE_scores_recorder;


std::vector<std::string> direction;

std::vector<double> time_stamp_vector;
std::vector<double> buffer_vector;

std::vector<std::string> re_bitrate_vector;
std::vector<std::string> old_bitrate_vector;

std::vector<double> stall_time_duration_vector;
std::vector<double> stall_time_stamp;

std::vector<std::string> created_file_vector;

std::ofstream out_file_stall_recorder;

std::string get_resolution(int m_duration, int m_bitrate, std::string m_video){

	if (m_video == "RACENIGHT" ||
		m_video == "racenight")
	{
		if (m_bitrate <= 1800)
			return "720x480";
		else if (m_bitrate <= 5400)
			return "1280x720";
		else if (m_bitrate <= 9000)
			return "1920x1080";
		else if (m_bitrate <= 18000)
			return "3840x2160";
		else 
			return "3840x2160";		
	}	
	else if (m_video == "BBB")
	{
		std::string output;
		switch(m_bitrate)
		{
			case 100:
				output = "256x144";
				break;
			case 200:
				output = "320x180";
				break;
			case 240:
			case 375:
				output = "384x216";
				break;	
			case 550:
				output = "512x288";
				break;		
			case 750:
				output = "640x360";
				break;
			case 1000:
				output = "768x432";
				break;
			case 1500:
				output = "1024x576";
				break;
			case 2300:
			case 3000:
				output = "1280x720";
				break;
			case 4300:
			case 5800:
				output = "1920x1080";
				break;
			case 6500:
			case 7000:
			case 7500:
				output = "2560x1440";
				break;
			case 8000:
			case 12000:
			case 17000:
			case 20000:
				output = "3840x2160";
				break;
			default:
				std::cerr << "No available bitrate" << std::endl;
				exit(EXIT_FAILURE);
		}
		return output;
	}
	else{
		return "This video is not supported\n";
		exit(EXIT_FAILURE);
	}	
	// return "-----";
}

void get_file_paths(){
/*
*****1s-AGG-SQUAD*****
/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/Squad_Aggressive/191218_1402/
/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/Squad_Aggressive/191218_1340/
/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/Squad_Aggressive/191219_0943/
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

	// get segment duration
	// 20.07.13 [simplify] DEL-S
	#if 0
	std::vector<std::string> temp_sd_1;
	std::vector<std::string> temp_sd_2;
	boost::split(temp_sd_1, m_DIRECTION, boost::is_any_of("/"));
	boost::split(temp_sd_2, temp_sd_1[9], boost::is_any_of("_"));
	DURATION = std::stoi(temp_sd_2[1]);
	#endif
	// 20.07.13 [simplify] DEL-E
	std::cout << "SEGMENT DURATION of video: " << DURATION << std::endl;
	int max_segment = 300000/DURATION;


	// skip the first line and delete all old data from the previous direction
	time_stamp_vector.clear();
	re_bitrate_vector.clear();
	old_bitrate_vector.clear();
	buffer_vector.clear();

	file.ignore ( std::numeric_limits<std::streamsize>::max(), '\n' );
	while (std::getline(file, str) && i <= max_segment){
		if (str.size() > 0){
			boost::split(temp, str, boost::is_any_of("\t,"));
			time_stamp_vector.push_back(std::stod(temp[0]));
			re_bitrate_vector.push_back(temp[2]);
			old_bitrate_vector.push_back(temp[3]);
			buffer_vector.push_back(std::stod(temp[4]));

			i++;			
		}
	}

}

void get_stall_duration(std::string m_path){
	std::cout << "Stall duration " << std::endl;
	// delete all data from the previous direction
	stall_time_stamp.clear();
	stall_time_duration_vector.clear();

	double 	m_total_duration_time = 0;
	int 	m_num_duration = 0;

	for (int i = 5; i < buffer_vector.size(); i ++){
		// if (buffer_vector.at(i) < 1 && 
		// 	((buffer_vector.at(i+1) == DURATION) ||
		// 	 (buffer_vector.at(i+1) == buffer_vector.at(i)))){
		if (buffer_vector.at(i) == DURATION){
			std::cout << "buffer " << i << ": " << buffer_vector.at(i) << std::endl;

			double start_stall_time = time_stamp_vector.at(i-1)+buffer_vector.at(i-1);
			stall_time_stamp.push_back(start_stall_time);
			int j = 1;
			if (i + j <= buffer_vector.size()-1){
				while (buffer_vector.at(i+j) - buffer_vector.at(i+j-1) == DURATION && 
						i+j < buffer_vector.size()-1){
					// std::cout << "\tcurrent check: " << i+j << std::endl;
					++j;
				}
			}
			else{

			}

			double end_stall =  time_stamp_vector.at(i+j-1);
			std::cout << "stall_start: " << start_stall_time << " at " << i+1;
			std::cout << " stall_end: " << end_stall << " at " << i + j << std::endl;
			stall_time_duration_vector.push_back(end_stall - start_stall_time);

			m_num_duration ++;
			m_total_duration_time += end_stall - start_stall_time;
		}
	}

	out_file_stall_recorder << m_path << std::endl;
	out_file_stall_recorder << m_num_duration << std::endl;
	out_file_stall_recorder << m_total_duration_time << '\n' << std::endl;
}

void write_mode0_file(std::string m_DIRECTION){
/*
/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/Squad_Aggressive/191218_1402/
/home/minh/1.OwnCloud/Documents/1_Proposal/1_Retransmission/3_Journal/Experimental-Results/H2BR_HEVC/NETWORK_4G/PL_0/SD_1000ms/ABR_AGG/RETRANS_NONE/2020-06-29_102750
*/	
	std::cout << "Writing files " << std::endl;
	std::vector<std::string> name_part;
	boost::split(name_part, m_DIRECTION, boost::is_any_of("/"));

	std::ofstream re_ofile;

	re_ofile.open(DIRECTION_OUT + "json_files/" + name_part[13] + '_' + name_part[14] + '_' + name_part[15] + '_'
						 + std::to_string(DURATION) + "_Retrans_mode0.json");

	re_ofile << R"({
    "I11": {
    	"_comment": " This is for audio",
        "segments": [],
        "streamID": 42
    },
    "I13": {
    	"_comment": " This is for video",
        "segments": [)" << std::endl;

// retransmisison propertise
    for (int i = 0; i < re_bitrate_vector.size(); i ++){
    	re_ofile << "\t\t\t{\n"
    			 << "\t\t\t\t" << R"("bitrate": )" + re_bitrate_vector.at(i) + ",\n"
    			 << "\t\t\t\t" << R"("codec": )" +  CODEC + ",\n" 
    			 << "\t\t\t\t" << R"("duration": )" +  std::to_string(DURATION) + ",\n"
    			 << "\t\t\t\t" << R"("fps": )" +  FPS + ",\n"
    			 << "\t\t\t\t" << R"("resolution": ")" + get_resolution(DURATION, std::stoi(re_bitrate_vector.at(i)), video) + "\",\n" 
    			 << "\t\t\t\t" << R"("start": )" +  std::to_string(i*DURATION) + "\n" ;
	    if ( i != re_bitrate_vector.size()-1){
	    	re_ofile << "\t\t\t},\n";
	    }
	    else 
	    	re_ofile << "\t\t\t}\n";    			 
    }

    re_ofile << R"(
        ],
        "streamId": 42
    },
    "I23": {
        "stalling": [
        	[0, 0.0001])";

    for (int i = 0; i < stall_time_duration_vector.size(); i ++){
    	re_ofile <<",\n";
    	re_ofile << "\t\t\t[" + std::to_string(stall_time_stamp.at(i)) +", "
    			 << std::to_string(stall_time_duration_vector.at(i))
    			 << "]";
    }

    re_ofile << R"(],
        "streamId": 42
    },
    "IGen": {
        "device": "pc",
        "displaySize": "3840x2160",
        "viewingDistance": "70cm"
    }
})" << std::endl;

	re_ofile.close();

	std::cout << "Created these files: " << std::endl;
	created_file_vector.push_back(name_part[13] + '_' + name_part[14] + '_' + name_part[15] + '_' + std::to_string(DURATION) + "_Retrans_mode0.json");
}


double exec(const char* cmd) {
    std::array<char, 128> buffer;
    std::string result;
    std::unique_ptr<FILE, decltype(&pclose)> pipe(popen(cmd, "r"), pclose);
    double QoE = 0;
    if (!pipe) {
        throw std::runtime_error("popen() failed!");
    }
    while (fgets(buffer.data(), buffer.size(), pipe.get()) != nullptr) {
        result += buffer.data();

        if (buffer.at(3) == 'O' && 
        	buffer.at(4) == '4' && 
        	buffer.at(5) == '6'){

        	// std::cout << buffer.at(9) << ' ' << buffer.at(11) << ' ' << buffer.at(12) << std::endl;
        	QoE = 100 * (buffer.at(9)- '0') ;
        	QoE += 10*(buffer.at(11) - '0');
        	QoE += buffer.at(12) - '0';
        	QoE = QoE/100.0;
        	// std::cout << "********************* QoE 4 **************************" << QoE << std::endl;
        }
        
    }
    return QoE;
}

std::string get_folder(std::string m_direction){
	std::vector<std::string> temp;
	boost::split(temp, m_direction, boost::is_any_of("_"));
	std::string output = temp[4] + "_" + temp[5] + "_" + temp[6];
	std::cout << "folder: " << output << std::endl;
	return output;
}

int main(){
	std::cout << "What's the segment duration? ";
	std::cin >> DURATION;
	std::cout << "What's the video? (RACENIGHT, BBB) ";
	std::cin >> video;
	std::cout << "Fps? (30.0, 24.0) ";
	std::cin >> FPS;
	get_file_paths();

	out_file_stall_recorder.open(DIRECTION_OUT + "stall_recorder.txt");

	for (int i = 0; i < direction.size(); i++){
		std::string m_cur_direction = direction.at(i);
		std::cout << "\n\nReading this path: " << m_cur_direction << std::endl;

		get_bitrate_vector(m_cur_direction);
		get_stall_duration(m_cur_direction);
		write_mode0_file(m_cur_direction);
	}

	out_file_stall_recorder.close();
	// log created files
	std::ofstream created_file, QoE_results;
	created_file.open(DIRECTION_OUT + "created_files.txt");
	QoE_results.open(DIRECTION_OUT + "QoE_results.txt");
	
	folders_recorder.clear();
	QoE_scores_recorder.clear();

	for (int n = 0; n < created_file_vector.size(); n++){
		std::cout << "\n*************************************************" << std::endl;	
		created_file << created_file_vector.at(n) << std::endl;
		std::cout << "checking file: " << created_file_vector.at(n) << std::endl;
		
		int m = created_file_vector.at(n).size();
		char char_array[m+1];

		std::strcpy(char_array, created_file_vector.at(n).c_str());
		// char one[128] = "python3 -m itu_p1203 /home/minh/Documents/ITU-T_QoE/itu-p1203/minh_retransmission/";
		char one[256] = "/home/minh/4_ITU-T_P1203/itu-p1203-codecextension/calculate.py -m 0 /home/minh/HTTP2_src/server/git/nghttp2_ATHENA/H2BR_journal/QoE_ITU/json_files/";
		
		char m_cmd[512];
		std::strcpy(m_cmd,one);
		std::strcat(m_cmd, char_array);
		// std::cout << "m_cmd: " << m_cmd << std::endl;

		// system("cd /home/minh/4_ITU-T_P1203/itu-p1203-codecextension ");
		std::cout << "Running this command: " << m_cmd << std::endl;

		folders_recorder.push_back(get_folder(created_file_vector.at(n)));
		QoE_scores_recorder.push_back(exec(m_cmd));
		std::cout << "Foder: " << folders_recorder.at(folders_recorder.size()-1) << '\t';
		std::cout << "Final QoE: " << QoE_scores_recorder.at(QoE_scores_recorder.size()-1) << std::endl;		
	}

	if (folders_recorder.size() != QoE_scores_recorder.size()){
		std::cerr << "Size of folders and QOE score is not the same" << std::endl;
		exit(EXIT_FAILURE);
	}

	for (auto n = QoE_scores_recorder.begin(); n != QoE_scores_recorder.end(); n++){
		QoE_results << *n << '\t';
	}
	QoE_results << '\n';

	for (auto n = folders_recorder.begin(); n != folders_recorder.end(); n++){
		QoE_results << *n << '\t';
	}
	
	created_file.close();
	QoE_results.close();
	// std::cout << "*************************************************" << std::endl;
	// system("cd ~/Documents/ITU-T_QoE/itu-p1203/minh_retransmission");
	// // std::cout << "checking file: " << created_file_vector.at(0) << std::endl;

	// std::cout << "Final QoE: " << exec("python3 -m itu_p1203 /home/minh/Documents/ITU-T_QoE/itu-p1203/minh_retransmission/BBB_1s_NoRET_Aggressive_191220_1100_1_Retrans_mode0.json") << std::endl;
	std::cout << "*************************" << std::endl;

	return 0;
}
