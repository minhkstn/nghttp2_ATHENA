#include "intergrated_ITU_T_QoE_extraction.h"
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

Intergrated_ITU_T_QoE_extraction::Intergrated_ITU_T_QoE_extraction(){

}
Intergrated_ITU_T_QoE_extraction::~Intergrated_ITU_T_QoE_extraction(){

}

std::string Intergrated_ITU_T_QoE_extraction::get_resolution(int m_duration, int m_bitrate){
	switch (m_duration){
		case 500 :
			break;

		case 1000 :
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

		case 2000 :
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

		case 4000 :
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

		case 6000 :
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
void Intergrated_ITU_T_QoE_extraction::write_mode0_file(	std::string 		m_result_direction,
															std::vector<int> 	bitrate_vector,
															std::vector<int> stall_start_time,
															std::vector<int> stall_end_time,
															int duration){
	std::ofstream ITU_T_QoE_file;

	ITU_T_QoE_file.open(m_result_direction + "/QoE_itu.json");

	ITU_T_QoE_file << R"({
    "I11": {
    	"_comment": " This is for audio",
        "segments": [],
        "streamID": 42
    },
    "I13": {
    	"_comment": " This is for video",
        "segments": [)" << std::endl;	

	for (int i = 0; i < bitrate_vector.size(); i ++){
    	ITU_T_QoE_file << "\t\t\t{\n"
    			 << "\t\t\t\t" << R"("bitrate": )" + std::to_string(bitrate_vector.at(i)) + ",\n"
    			 << "\t\t\t\t" << R"("codec": )" +  CODEC + ",\n" 
    			 << "\t\t\t\t" << R"("duration": )" +  std::to_string(duration) + ",\n"
    			 << "\t\t\t\t" << R"("fps": )" +  FPS + ",\n"
    			 << "\t\t\t\t" << R"("resolution": ")" + get_resolution(duration, bitrate_vector.at(i)) + "\",\n" 
    			 << "\t\t\t\t" << R"("start": )" +  std::to_string(i*duration) + "\n" ;
	    if ( i != bitrate_vector.size()-1){
	    	ITU_T_QoE_file << "\t\t\t},\n";
	    }
	    else 
	    	ITU_T_QoE_file << "\t\t\t}\n";    			 
    }    

    ITU_T_QoE_file << R"(
        ],
        "streamId": 42
    },
    "I23": {
        "stalling": [
        	[0, 0.0001])";

    for (int i = 0; i < stall_start_time.size(); i ++){
    	ITU_T_QoE_file <<",\n";
    	ITU_T_QoE_file << "\t\t\t[" + std::to_string(stall_start_time.at(i)) +", "
    			 << std::to_string(stall_end_time.at(i) - stall_start_time.at(i))
    			 << "]";
    }

    ITU_T_QoE_file << R"(],
        "streamId": 42
    },
    "IGen": {
        "device": "pc",
        "displaySize": "1920x1080",
        "viewingDistance": "150cm"
    }
})" << std::endl;   

	ITU_T_QoE_file.close();
 	std::cout << "\n\t[MINH] INFO: Created QoE json file" << std::endl;
}

double Intergrated_ITU_T_QoE_extraction::exec(std::string m_result_direction) {
    std::array<char, 128> buffer;
    std::string result;

    char cmd[256] = "python3 -m itu-p1203 ";
    std::strcat(cmd,m_result_direction.c_str());
    std::strcat(cmd,"/QoE_itu.json");

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

double Intergrated_ITU_T_QoE_extraction::QoE_measurement(	std::string 		m_result_direction,
															int 				m_duration,
															std::vector<int> 	bitrate_vector,
															std::vector<int>	buffer_vetor,
															std::vector<int> 	stall_start_time,
															std::vector<int> 	stall_end_time){
	std::cout << "\n\t[MINH] INFO: QoE measurement STARTS" << std::endl;
	write_mode0_file(m_result_direction,
					 bitrate_vector,
					 stall_start_time,
					 stall_end_time,
					 m_duration);

	// run itu-p1203
	double temp = exec(m_result_direction);
	std::cout << "\n\t[MINH] INFO: QoE measurement ENDS" << std::endl;
	return temp;
}