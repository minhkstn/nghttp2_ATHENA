#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include <vector>
#include <limits>

const int DURATION 			= 6;
const std::string FPS 		= "24";
const std::string CODEC 	= "\"h264\"";
// const std::string DIRECTION = "/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/proposal/191205_0158_3G/";	
// const std::string DIRECTION = "/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_1s/squad/191205_0147_3G/";	
// const std::string DIRECTION = "/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_2s/Proposal/191205_0215_3G/";	
// const std::string DIRECTION = "/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_2s/Squad/191205_0126_3G/";	
// const std::string DIRECTION = "/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_4s/Proposal/191205_0023_3G/";	
// const std::string DIRECTION = "/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_4s/squad/191204_2140_3G/";	
// const std::string DIRECTION = "/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_6s/Proposal/191204_2253_3G/";	
const std::string DIRECTION = "/home/minh/ownCloud/Documents/Proposal/Retransmission/Result/complex_trace/BBB_6s/squad/191204_1635_3G/";
const std::string DIRECTION_OUT = "/home/minh/Documents/ITU-T_QoE/itu-p1203/minh_retransmission/";

std::vector<double> time_stamp_vector;
std::vector<double> buffer_vector;

std::vector<std::string> re_bitrate_vector;
std::vector<std::string> old_bitrate_vector;

std::vector<double> stall_time_duration_vector;
std::vector<double> stall_time_stamp;

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

void get_bitrate_vector(){
	// input file
	std::ifstream file (DIRECTION + "KPushTest_detail.ods");
	// variable to store line data
	std::string str;
	std::vector<std::string> temp;
	// skip the first line

	file.ignore ( std::numeric_limits<std::streamsize>::max(), '\n' );
	while (std::getline(file, str)){
		boost::split(temp, str, boost::is_any_of("\t"));
		time_stamp_vector.push_back(std::stod(temp[0]));
		re_bitrate_vector.push_back(temp[2]);
		old_bitrate_vector.push_back(temp[3]);
		buffer_vector.push_back(std::stod(temp[4]));
	}

}

void get_stall_duration(){
	for (int i = 0; i < buffer_vector.size(); i ++){
		// std::cout << "buffer " << i << " " << buffer_vector.at(i) << std::endl;
		if (buffer_vector.at(i) < 1 && buffer_vector.at(i+1) == DURATION){
			std::cout << "buffer " << i << " " << buffer_vector.at(i) << std::endl;
			stall_time_stamp.push_back(time_stamp_vector.at(i));
			int j = 1;
			while (buffer_vector.at(i+j) < 16){
				++j;
			}

			double end_stall =  time_stamp_vector.at(i+j);
			std::cout << "stall_start: " << time_stamp_vector.at(i) << " at " << i;
			std::cout << " stall_end: " << end_stall << " at " << i + j << std::endl;
			stall_time_duration_vector.push_back(end_stall - time_stamp_vector.at(i)-buffer_vector.at(i));

		}
	}
}

void write_mode0_file(){
	std::vector<std::string> name_part;
	boost::split(name_part, DIRECTION, boost::is_any_of("/"));

	std::ofstream re_ofile, old_ofile;

	re_ofile.open(DIRECTION_OUT + name_part[10] + '_'
						 + std::to_string(DURATION) + "_Retrans_mode0.json");
	old_ofile.open(DIRECTION_OUT + name_part[10] + '_'
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
        "stalling": [)" << std::endl;

    for (int i = 0; i < stall_time_duration_vector.size(); i ++){
    	re_ofile << "\t\t\t[" + std::to_string(stall_time_stamp.at(i)) +", "
    			 << std::to_string(stall_time_duration_vector.at(i));
    	if (i == stall_time_duration_vector.size()-1){
    		re_ofile <<"]"<< std::endl;
    	}
    	else
    		re_ofile <<"],"<< std::endl;
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
	std::cout << name_part[10] + '_' + std::to_string(DURATION) + "_Retrans_mode0.json" << std::endl;
	std::cout << name_part[10] + '_' + std::to_string(DURATION) + "_Old_mode0.json" << std::endl;
}
int main(){
	get_bitrate_vector();
	get_stall_duration();
	write_mode0_file();
	// std::cout << "time\tre_rate\told_rate\buff" << std::endl;
	// for (int i = 0; i < time_stamp_vector.size(); i ++){
	// 	std::cout << time_stamp_vector.at(i) << '\t'
	// 			  << re_bitrate_vector.at(i) << '\t'
	// 			  << old_bitrate_vector.at(i) << '\t'
	// 			  << buffer_vector.at(i) << '\t'
	// 			  << std::endl;
	// } 
	return 0;
}
	// re_ofile <<"\t\t],\n"
 //    		 << "\t\t\"streamid\": 42\n"
 //    		 << "\t},\n"
 //    		 << "\t\"I23\": {\n"
 //    		 << "\t\t\"stalling\": [" 