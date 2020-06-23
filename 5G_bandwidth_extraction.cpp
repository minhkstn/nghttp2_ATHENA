#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include <vector>
#include <sstream>
#include <ctime>

std::vector<int> thrp;
std::vector<struct tm> timestamp;
int		rtt = 0;
/* thrpPosition: the position of throughput info in the log file.
** in 4G dataset of Ghent Uni:
** thrpPosition = 4
** in 5G dataset of Uni cork (Beyond Throughput, The Next Generation:A 5G Dataset with Channel and Context Metrics)
** thrpPosition = 12
*/
int 	thrpPosition = 12; 

/* separator: the symbol to separate info types.
** in 4G dataset of Ghent Uni:
** separator = " "
** in 5G dataset of Uni cork (Beyond Throughput, The Next Generation:A 5G Dataset with Channel and Context Metrics)
** separator = ","
*/
const std::string separator = ",";
const int 		  startPoint= 10;
const int 		  tracelength = 500;

// const std::string originTraceFile = "B_2020.02.13_13.57.29_for300s";
// const std::string originTraceFile = "B_2019.12.16_13.40.04_for2000s";
// const std::string originTraceFile = "B_2020.01.16_10.43.34";
const std::string originTraceFile = "B_2020.02.13_13.03.24_driving";

struct tm transformTxtToTime(std::string s){
    struct tm tm;
    // 2020.02.13_13.58.24
    if (strptime(s.c_str(), "%Y.%m.%d_%H.%M.%S", &tm)) {
        int d = tm.tm_mday,
            m = tm.tm_mon + 1,
            y = tm.tm_year + 1900;
    }
    else{
    	std::cerr << "[ERROR] wrong time string format: Y.m.d_H.M.S, but input string is "
    			  << s
    			  << std::endl;
    }
    return tm;
}

int timeDiffInSec(struct tm time_start, struct tm time_end){
	int tdif =  (time_end.tm_hour - time_start.tm_hour)*3600 +
			    (time_end.tm_min - time_start.tm_min)*60 +
			    (time_end.tm_sec - time_start.tm_sec);
	return tdif;			    
}

void parseThroughput(std::string fileDir, std::string separator){
	std::string str;
	std::vector<std::string> temp;
	std::ifstream file(fileDir);

	std::cout << "thrp: " <<  std::endl;
	std::getline(file, str); // skip the first line			  			  
	while(std::getline(file, str)){
		boost::split(temp, str, boost::is_any_of(separator));

		if (rtt == 0 &&
			temp[thrpPosition+3] != "-")
		{
			rtt = std::stoi(temp[thrpPosition+3]);
			std::cout << " FOUND: rtt: " << temp[thrpPosition+3] << std::endl;
		}
		int temp_thrp = std::stoi(temp[thrpPosition]);
		if (temp_thrp > 10 &&
			temp[thrpPosition+2] == "D" &&
			temp[thrpPosition-6] == "5G")
		{
			thrp.push_back(temp_thrp);	
			timestamp.push_back(transformTxtToTime(temp[0]));
		}
	}	
}

int main(){

	const std::string outputFileDir = "/home/minh/HTTP2_src/server/git/nghttp2_ATHENA/5g_traces/";
	const std::string originFileDir = outputFileDir + originTraceFile + ".csv";
	const std::string resultTxtFileDir = outputFileDir + "origin_" + originTraceFile + '_' + std::to_string(startPoint) + ".txt";
	const std::string resultTCPDummynetFileDir = outputFileDir + "complex_TCP_" + originTraceFile + '_' + std::to_string(startPoint) + ".sh";
	const std::string resultUDPDummynetFileDir = outputFileDir + "complex_UDP_" + originTraceFile + '_' + std::to_string(startPoint) + ".sh";
	

	parseThroughput(originFileDir, separator);

	std::ofstream original_file, bandwidth_trace_TCP_file, bandwidth_trace_UDP_file;

	original_file.open(resultTxtFileDir);
	bandwidth_trace_TCP_file.open(resultTCPDummynetFileDir);	
	bandwidth_trace_UDP_file.open(resultUDPDummynetFileDir);

	bandwidth_trace_TCP_file << "#!/usr/bin/env bash\nipfw -q flush\nipfw -q pipe flush\nipfw add pipe 3 ip from any to me\nipfw add pipe 3 ip from me to any\n\n";
	bandwidth_trace_UDP_file << "#!/usr/bin/env bash\nipfw -q flush\nipfw -q pipe flush\nipfw add pipe 3 udp from any to me\nipfw add pipe 3 udp from me to any\n\n";

	original_file << "Time\tThroughput\n";
	for (int i = startPoint; i < startPoint + tracelength; i++){
		if (timeDiffInSec(timestamp.at(i), timestamp.at(i+1)) <= 0){
			continue;
		}
		else{
			original_file << timeDiffInSec(timestamp.at(0), timestamp.at(i)) << '\t'
						  << thrp.at(i) << "\n";	// in kbps
			bandwidth_trace_TCP_file << "ipfw pipe 3 config bw "
								 << thrp.at(i)
								 << "Kbit/s delay "
								 << rtt
								 << "ms\n"
								 << "sleep "
								 << timeDiffInSec(timestamp.at(i), timestamp.at(i+1))
								 << "s\n\n";	
			bandwidth_trace_UDP_file << "ipfw pipe 3 config bw "
								 << thrp.at(i)
								 << "Kbit/s delay "
								 << rtt
								 << "ms\n"
								 << "sleep "
								 << timeDiffInSec(timestamp.at(i), timestamp.at(i+1))
								 << "s\n\n";									 		
		}
	}

	bandwidth_trace_TCP_file << "ipfw -q flush\nipfw -q pipe flush";
	bandwidth_trace_UDP_file << "ipfw -q flush\nipfw -q pipe flush";

	original_file.close();
	bandwidth_trace_TCP_file.close();
	bandwidth_trace_UDP_file.close();

	std::cout << "COMPLETE" << std::endl;
	return 0;
}