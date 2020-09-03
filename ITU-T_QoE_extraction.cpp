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

int   DURATION 			= 1000; //here. get from path
const std::string FPS 		= "24";
const std::string CODEC 	= "\"h264\"";

const std::string PATHS_FILE = "/home/minh/HTTP2_src/server/git/nghttp2_ATHENA/results_dir_list.txt";
const std::string DIRECTION_OUT = "/home/minh/Documents/ITU-T_QoE/itu-p1203/minh_retransmission/";


std::vector<std::string> direction;

std::vector<double> time_stamp_vector;
std::vector<double> buffer_vector;

std::vector<std::string> re_bitrate_vector;
std::vector<std::string> old_bitrate_vector;

std::vector<double> stall_time_duration_vector;
std::vector<double> stall_time_stamp;

std::vector<std::string> created_file_vector;

std::ofstream out_file_stall_recorder;

std::string get_resolution(int m_duration, int m_bitrate){
	switch (m_duration){
		case 1 :
			if (m_bitrate <= 135)
				return "320x240";
			else if (m_bitrate <= 425)
				return "480x360";
			else if (m_bitrate <= 621)
				return "854x480";
			else if (m_bitrate <= 1700)
				return "1280x720";
			else 
				return "1920x1080";			
			break;

		case 2 :
			if (m_bitrate <= 131)
				return "320x240";
			else if (m_bitrate <= 396)
				return "480x360";
			else if (m_bitrate <= 595)
				return "854x480";
			else if (m_bitrate <= 1500)
				return "1280x720";
			else 
				return "1920x1080";			
			break;	

		case 4 :
			if (m_bitrate <= 129)
				return "320x240";
			else if (m_bitrate <= 378)
				return "480x360";
			else if (m_bitrate <= 578)
				return "854x480";
			else if (m_bitrate <= 1500)
				return "1280x720";
			else 
				return "1920x1080";			
			break;

		case 6 :
			if (m_bitrate <= 128)
				return "320x240";
			else if (m_bitrate <= 374)
				return "480x360";
			else if (m_bitrate <= 573)
				return "854x480";
			else if (m_bitrate <= 1500)
				return "1280x720";
			else 
				return "1920x1080";			
			break;						

	}

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
		}
	}
}

void get_bitrate_vector(std::string m_DIRECTION){
	std::cout << "Bitrate vector " << std::endl;
	// input file
	std::ifstream file (m_DIRECTION + "KPushTest_detail.ods");

	// variable to store line data
	std::string str;
	std::vector<std::string> temp;
	int i = 2;

	// get segment duration
	std::vector<std::string> temp_sd_1;
	std::vector<std::string> temp_sd_2;
	boost::split(temp_sd_1, m_DIRECTION, boost::is_any_of("/"));
	boost::split(temp_sd_2, temp_sd_1[9], boost::is_any_of("_"));
	DURATION = std::stoi(temp_sd_2[1]);
	std::cout << "SEGMENT DURATION: " << DURATION << std::endl;
	int max_segment = 596/DURATION + 1;


	// skip the first line and delete all old data from the previous direction
	time_stamp_vector.clear();
	re_bitrate_vector.clear();
	old_bitrate_vector.clear();
	buffer_vector.clear();

	file.ignore ( std::numeric_limits<std::streamsize>::max(), '\n' );
	while (std::getline(file, str) && i <= max_segment){
		// std::cout << "string: " << str << std::endl;
		if (str.size() > 0){
			boost::split(temp, str, boost::is_any_of("\t"));
			time_stamp_vector.push_back(std::stod(temp[0]));
			re_bitrate_vector.push_back(temp[2]);
			// std::cout << "bitrate " << i << ": " << temp[2] << std::endl;
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

	for (int i = 0; i < buffer_vector.size(); i ++){
		if (buffer_vector.at(i) < 1 && 
			((buffer_vector.at(i+1) == DURATION) ||
			 (buffer_vector.at(i+1) == buffer_vector.at(i)))){

			std::cout << "buffer " << i << ": " << buffer_vector.at(i) << std::endl;
			stall_time_stamp.push_back(time_stamp_vector.at(i));
			int j = 1;
			while (buffer_vector.at(i+j) == 0 || buffer_vector.at(i+j+1) - buffer_vector.at(i+j) == DURATION){
				++j;
			}

			double end_stall =  time_stamp_vector.at(i+j);
			std::cout << "stall_start: " << time_stamp_vector.at(i) << " at " << i+1;
			std::cout << " stall_end: " << end_stall << " at " << i + j+1 << std::endl;
			stall_time_duration_vector.push_back(end_stall - time_stamp_vector.at(i));

			m_num_duration ++;
			m_total_duration_time += end_stall - time_stamp_vector.at(i);
		}
	}

	out_file_stall_recorder << m_path << std::endl;
	out_file_stall_recorder << m_num_duration << std::endl;
	out_file_stall_recorder << m_total_duration_time << '\n' << std::endl;
}

void write_mode0_file(std::string m_DIRECTION){
/*
/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/Squad_Aggressive/191218_1402/
*/	
	std::cout << "Writing files " << std::endl;
	std::vector<std::string> name_part;
	boost::split(name_part, m_DIRECTION, boost::is_any_of("/"));

	std::ofstream re_ofile, old_ofile;

	re_ofile.open(DIRECTION_OUT + name_part[9] + '_' + name_part[10] + '_' + name_part[11] + '_'
						 + std::to_string(DURATION) + "_Retrans_mode0.json");
	old_ofile.open(DIRECTION_OUT + "Old/" + name_part[9] + '_' + name_part[10] + '_' + name_part[11] + '_'
						 + std::to_string(DURATION) + "_Old_mode0.json");	

	re_ofile << R"({
    "I11": {
    	"_comment": " This is for audio",
        "segments": [],
        "streamID": 42
    },
    "I13": {
    	"_comment": " This is for video",
        "segments": [)" << std::endl;

	old_ofile << R"({
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
    			 << "\t\t\t\t" << R"("resolution": ")" + get_resolution(DURATION, std::stoi(re_bitrate_vector.at(i))) + "\",\n" 
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
    	// if (i == stall_time_duration_vector.size()-1){
    	// 	re_ofile <<"]"<< std::endl;
    	// }
    	// else
    	// 	re_ofile <<"],"<< std::endl;
    }

    re_ofile << R"(],
        "streamId": 42
    },
    "IGen": {
        "device": "pc",
        "displaySize": "1920x1080",
        "viewingDistance": "150cm"
    }
})" << std::endl;

// old propertise    
    for (int i = 0; i < re_bitrate_vector.size(); i ++){
    	old_ofile << "\t\t\t{\n"
    			 << "\t\t\t\t" << R"("bitrate": )" + old_bitrate_vector.at(i) + ",\n"
    			 << "\t\t\t\t" << R"("codec": )" +  CODEC + ",\n" 
    			 << "\t\t\t\t" << R"("duration": )" +  std::to_string(DURATION) + ",\n"
    			 << "\t\t\t\t" << R"("fps": )" +  FPS + ",\n"
    			 << "\t\t\t\t" << R"("resolution": ")" + get_resolution(DURATION, std::stoi(old_bitrate_vector.at(i))) + "\",\n" 
    			 << "\t\t\t\t" << R"("start": )" +  std::to_string(i*DURATION) + "\n" ;
	    if ( i != re_bitrate_vector.size()-1){
	    	old_ofile << "\t\t\t},\n";
	    }
	    else 
	    	old_ofile << "\t\t\t}\n";    			 
	 }

    old_ofile << R"(
        ],
        "streamId": 42
    },
    "I23": {
        "stalling": [)" << std::endl;

    for (int i = 0; i < stall_time_duration_vector.size(); i ++){
    	old_ofile << "\t\t\t[" + std::to_string(stall_time_stamp.at(i)) +", "
    			 << std::to_string(stall_time_duration_vector.at(i));
    	if (i == stall_time_duration_vector.size()-1){
    		old_ofile <<"]"<< std::endl;
    	}
    	else
    		old_ofile <<"],"<< std::endl;    			 
    }

    old_ofile << R"(],
        "streamId": 42
    },
    "IGen": {
        "device": "pc",
        "displaySize": "1920x1080",
        "viewingDistance": "150cm"
    }
})" << std::endl;
	re_ofile.close();
	old_ofile.close();
	std::cout << "Created these files: " << std::endl;
	created_file_vector.push_back(name_part[9] + '_' + name_part[10] + '_' + name_part[11] + '_' + std::to_string(DURATION) + "_Retrans_mode0.json");
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

int main(){
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
	for (int n = 0; n < created_file_vector.size(); n++){
		created_file << created_file_vector.at(n) << std::endl;
std::cout << "\n*************************************************" << std::endl;	
		std::cout << "checking file: " << created_file_vector.at(n) << std::endl;
		int m = created_file_vector.at(n).size();
		char char_array[m+1];

		std::strcpy(char_array, created_file_vector.at(n).c_str());
		char one[128] = "python3 -m itu_p1203 /home/minh/Documents/ITU-T_QoE/itu-p1203/minh_retransmission/";
		
		char m_cmd[256];
		std::strcpy(m_cmd,one);
		std::strcat(m_cmd, char_array);
		// std::cout << "m_cmd: " << m_cmd << std::endl;

		system("cd ~/Documents/ITU-T_QoE/itu-p1203/minh_retransmission");
		// std::cout << "checking file: " << created_file_vector.at(0) << std::endl;
		double QoE_score = exec(m_cmd);
		std::cout << "Final QoE: " << QoE_score << std::endl;		
		// QoE_results << created_file_vector.at(n) << std::endl;
		// QoE_results << QoE_score << std::endl;				
		QoE_results << QoE_score << '\t';
		if (n%3 == 2){
			QoE_results << '\t';
		}
		if (n%9 == 8){
			QoE_results << '\n';	
		}
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
