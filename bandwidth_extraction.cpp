#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include <vector>

int main(){
	// std::ifstream file("report_bicycle_0002_659s.txt");
	std::ifstream file("report_bus_0003_759s.log");
	std::string str;
	std::vector<int> thrp;
	std::vector<std::string> temp;

	while(std::getline(file, str)){
		
		boost::split(temp, str, boost::is_any_of(" "));

		thrp.push_back(std::stoi(temp[4]));
	}

	std::ofstream original_file, bandwidth_trace_file;
	// original_file.open("original_bw_bicycle.txt");
	// bandwidth_trace_file.open("complex_bicycle.sh");

	original_file.open("original_bw_bus.txt");
	bandwidth_trace_file.open("complex_bus.sh");	

	bandwidth_trace_file << "#!/usr/bin/env bash\nipfw -q flush\nipfw -q pipe flush\nipfw add pipe 3 ip from 192.168.168.1 to me\nipfw add pipe 3 ip from me to 192.168.168.1\n\n";

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