#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include <vector>

std::vector<int> thrp;

void parseThroughput(std::string fileDir, std::string separator){
	std::string str;
	std::vector<std::string> temp;
	std::ifstream file(fileDir);

	while(std::getline(file, str)){
		
		boost::split(temp, str, boost::is_any_of(separator));

		thrp.push_back(std::stoi(temp[4]));
	}	
}

int main(){

	const std::string originTraceFile = "report_bus_0003_759s";
	const std::string originFileDir = originTraceFile + ".log";
	const std::string resultTxtFileDir = "origin_" + originTraceFile + ".txt";
	const std::string resultDummynetFileDir = "complex_" + originTraceFile + ".sh";
	const std::string separator = " ";
	
	parseThroughput(originFileDir, separator);

	std::ofstream original_file, bandwidth_trace_file;

	original_file.open(resultTxtFileDir);
	bandwidth_trace_file.open(resultDummynetFileDir);	

	bandwidth_trace_file << "#!/usr/bin/env bash\nipfw -q flush\nipfw -q pipe flush\nipfw add pipe 3 ip from any to me\nipfw add pipe 3 ip from me to any\n\n";

	for (auto a = thrp.begin()+1; a != thrp.end(); a++){
		original_file << (*a)/125 << "\n";	// in kbps
		bandwidth_trace_file << "ipfw pipe 3 config bw "
							 << (*a)/125
							 << "Kbit/s delay 25ms\n"
							 << "sleep 1.0s\n\n";
	}

	bandwidth_trace_file << "ipfw -q flush\nipfw -q pipe flush";

	original_file.close();
	bandwidth_trace_file.close();

	return 0;
}