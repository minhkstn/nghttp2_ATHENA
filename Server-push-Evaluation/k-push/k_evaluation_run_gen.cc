#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>

int main (){
	std::ofstream out_file;

	out_file.open("k_evaluation_run.sh");

	out_file << "#!/bin/bash" << std::endl;

	std::string 	ABR[1] = {"AGG"};
	std::string 	sd[4] = {"1000",
						"2000",
						"4000",
						"6000"};
	std::string		rtt[4] = {"0",
						 "100",
						 "200",
						 "300"};	
	std::string 	kpush[5] = { "INDEPENDENT_FIXED_2",  // k = 2
							 "INDEPENDENT_FIXED_3",  // k = 3
							 "INDEPENDENT_FIXED_4",  // k = 4
							 "INDEPENDENT_FIXED_5",  // k = 5

							 "INDEPENDENT_ADAPT_1"};
	std::string 	buff[3] = {"5",
						  "10",
						  "20"};	

	for (int i_abr = 0; i_abr < 1; i_abr ++){
		for (int i_sd = 0; i_sd < 4; i_sd ++){
			for (int i_kpush = 0; i_kpush < 5; i_kpush ++){
				for (int i_buff = 0; i_buff < 3; i_buff ++){
					for (int i_rtt = 0; i_rtt < 4; i_rtt ++){
						std::string log_file = ABR[i_abr] + 
					                            "_SD_" 		+ sd[i_sd] 		+ "ms" 	 + 
					                            "_Kpush_"	+ kpush[i_kpush]+
					                            "_Buff_" 	+ std::to_string(std::stoi(buff[i_buff])*std::stoi(sd[i_sd]))+ "ms" +
					                            "_RTT_" 	+ rtt[i_rtt] 	+ "ms";

						out_file << "./nghttp -ns --ABR=" 	<< ABR[i_abr]
								 << " --segment-duration=" 	<< sd[i_sd]
								 << " --Kpush="				<< kpush[i_kpush]
								 << " --buff="				<< buff[i_buff]
								 << " --RTT="				<< rtt[i_rtt]
								 << " http://172.16.23.1:3002/rebuff/segment_duration=1000/bitrate=1300/num=1"
								 << " > " << log_file << "_log.txt"
								 << std::endl;
					}
					out_file << std::endl;
				}
			}
		}
	}
	return 0;						  
}