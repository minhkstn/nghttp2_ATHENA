#ifndef INTERGRATED_ITU_T_QOE_EXTRACTION_H
#define INTERGRATED_ITU_T_QOE_EXTRACTION_H

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

class Intergrated_ITU_T_QoE_extraction {
public: 
	const std::string FPS 		= "24";
	const std::string CODEC 	= "\"h264\"";

	int 						duration;
	std::vector<double> 		time_stamp_vector;
	std::vector<double> 		buffer_vector;
	std::vector<std::string> 	bitrate_vector;

	std::vector<double> 		stall_time_duration_vector;
	std::vector<double> 		stall_time_stamp;


	Intergrated_ITU_T_QoE_extraction();
	~Intergrated_ITU_T_QoE_extraction();
	std::string get_resolution(int m_duration, int m_bitrate);
	void write_mode0_file(	std::string 		m_result_direction,
							std::vector<int> 	bitrate_vector,
							std::vector<int> stall_start_time,
							std::vector<int> stall_end_time,
							int duration);
	double exec(std::string m_result_direction);
	double QoE_measurement(	std::string 		m_result_direction,
							int 				m_duration,
							std::vector<int> 	bitrate_vector,
							std::vector<int>	buffer_vetor,
							std::vector<int> 	stall_start_time,
							std::vector<int> 	stall_end_time);

};
#endif	// INTERGRATED_ITU_T_QOE_EXTRACTION_H