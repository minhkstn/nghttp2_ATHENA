/*gcc 9.3 c++17*/
/**sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 900 --slave /usr/bin/g++ g++ /usr/bin/g++-9 --slave /usr/bin/gcov gcov /usr/bin/gcov-9/
/*Build: g++ -o Results_collecttion_SHVC Results_collecttion_SHVC.cc -std=c++17*/
#include <iostream>
#include <fstream>
#include <boost/algorithm/string.hpp>
#include <vector>
#include <limits>

#include <cstdio>
#include <memory>
#include <stdexcept>
#include <filesystem>
#include <array>
#include <algorithm>
#include <iostream>
#include <fstream>

// const std::string ABRS[3] = {"ABR", "H2BR", "SVC_Backfilling"};
const std::string RETRANSS[3] = {"AGG", "H2BR", "SVC_Backfilling"};

struct FOLDER 
{
	std::string name;

	std::string num_of_request = "0";
	std::string avg_ret_bitrate = "0";
	std::string avg_ret_idx= "0";
	std::string avg_new_bitrate= "0";
	std::string avg_old_idx= "0";
	std::string lowest_buff= "0";
	std::string num_switch= "0";
	std::string num_switch_no_retrans= "0";
	std::string retrans_num_termination= "0";
	std::string succees_segment_num= "0";
	std::string amount_waste_data= "0";
	std::string rebuf_num= "0";
	std::string minh_rebuff_duration= "0";
	std::string start_play_time= "0";
	std::string qoe_itu = "0";
	std::string qoe_yin = "0";
	std::string switch_amplitude = "0";
};

struct RETRANS
{
	std::string name;
	std::vector<FOLDER> folder;
};

struct ABR
{
	std::string name;
	RETRANS 	retrans[4];
};

// ABR abr[3];
RETRANS retrans[3];

void initialize(){
	for (int j = 0; j < 3; j++){
		retrans[j].name = RETRANSS[j];
	}
}

// int get_abr_idx(std::string abr_str){
// 	std::cout << "abr string: " << abr_str << std::endl;
// 	for (int i = 0; i < 3; i++){
// 		if (abr_str == ABRS[i]){
// 			return i;
// 		}
// 	}
// 	std::cerr << "[ERROR] No ABR available" << std::endl;
// 	exit(EXIT_FAILURE);
// }

int get_retrans_idx(std::string retrans_str){
	std::cout << "retrans string: " << retrans_str << std::endl;
	for (int i = 0; i < 4; i++){
		if (retrans_str == RETRANSS[i]){
			return i;
		}
	}
	std::cerr << "[ERROR] No RETRANS available" << std::endl;
	exit(EXIT_FAILURE);
}

std::vector<std::string> get_directories(const std::string& s)
{
     std::vector<std::string> r;
    for(auto& p : std::filesystem::recursive_directory_iterator(s))
        if (p.is_directory())
            r.push_back(p.path().string());

	// delete abundant folders
	for (auto a = r.begin(); a != r.end(); a++){
		std::vector<std::string> temp;
		boost::split(temp, *a, boost::is_any_of("/"));
		if (temp.size() != 18){
			r.erase(a);
			a--;
		}
	}

    std::cout << "After deleting " << std::endl;
    for (auto a = r.begin(); a != r.end(); a++)
    	std::cout << *a << std::endl;
    	
    return r;
}

void get_info_from_directories(std::string s_vector){
	std::vector<std::string> temp;
	boost::split(temp, s_vector, boost::is_any_of("/"));
	// int abr_idx = get_abr_idx(temp.at(13));
	int retrans_idx = get_retrans_idx(temp.at(16));

	FOLDER tmp_folder;
	int position = 17;

	tmp_folder.name = temp.at(position);
	std::cout << "folder1: " << temp.at(position) << std::endl;

	retrans[retrans_idx].folder.push_back(tmp_folder);

	int folder_idx = retrans[retrans_idx].folder.size()-1;

	// get metrics
	std::fstream path_file;
	path_file.open(s_vector + "/summary.txt");
	if (path_file.fail()){
		std::cout << "file summary.txt does not exit" << std::endl;
		path_file.open(s_vector + "/SVC_summary.txt");
	}
	std::string str;
	int line_no = 0;
	std::vector<std::string> metric_temp;

	while(std::getline(path_file, str) && line_no < 11){
		line_no++;
		std::cout << "Line " << line_no << ": " << str << std::endl;
		boost::split(metric_temp, str, boost::is_any_of(" "));
		switch (line_no){
			case 3:
				retrans[retrans_idx].folder.at(folder_idx).avg_ret_bitrate = metric_temp.at(3);
				std::cout << "\t sum_avg_quality: " << retrans[retrans_idx].folder.at(folder_idx).avg_ret_bitrate << std::endl;
				break;
			case 5:
				retrans[retrans_idx].folder.at(folder_idx).num_switch = metric_temp.at(3);
				std::cout << "\t sum_switch_num: " << retrans[retrans_idx].folder.at(folder_idx).num_switch << std::endl;
				break;
			case 6:
				retrans[retrans_idx].folder.at(folder_idx).switch_amplitude = metric_temp.at(3);
				std::cout << "\t switch_amplitude: " << retrans[retrans_idx].folder.at(folder_idx).switch_amplitude << std::endl;
				break;
			case 7:
				retrans[retrans_idx].folder.at(folder_idx).rebuf_num = metric_temp.at(3);
				std::cout << "\t rebuf_num: " << retrans[retrans_idx].folder.at(folder_idx).rebuf_num << std::endl;
				break;
			case 8:
				retrans[retrans_idx].folder.at(folder_idx).minh_rebuff_duration = metric_temp.at(3);
				std::cout << "\t minh_rebuff_duration: " << metric_temp.at(3) << std::endl;
				break;
			case 10:
				retrans[retrans_idx].folder.at(folder_idx).succees_segment_num = metric_temp.at(3);
				std::cout << "\t success_segment_num: " << retrans[retrans_idx].folder.at(folder_idx).succees_segment_num << std::endl;
				break;
			case 11:
				retrans[retrans_idx].folder.at(folder_idx).retrans_num_termination = metric_temp.at(3);
				std::cout << "\t retrans_num_termination: " << retrans[retrans_idx].folder.at(folder_idx).retrans_num_termination << std::endl;
				break;
			default:
				break;		
		}
	}
}


int main(){
	std::vector<std::string> results_folder;
	std::string path;// = "/home/minh/ownCloud/Documents/1_Proposal/1_Retransmission/3_Journal/Experimental-Results/H2BR_SHVC_200811/H2BR_SHVC/NETWORK_4G/HTTP2/SD_2000/Buf_15/PL_0/SVC_Backfilling/";
	std::cin >> path;
	results_folder = get_directories(path);
	
	std::sort(results_folder.begin(), results_folder.end());

	std::cout << "After sorting" << std::endl;
	for (auto a = results_folder.begin(); a != results_folder.end(); a++){
		std::cout << *a << std::endl;
	}

	#if 1
	initialize();
	for (auto a = results_folder.begin(); a != results_folder.end(); a++){
		std::cout << "folder: " << *a << std::endl;
		get_info_from_directories(*a);
	}
	int results_folder_size = results_folder.size();
	for (int i = 0; i < results_folder_size; i++){
		std::cout << "sub folder: " << results_folder.at(results_folder_size-1-i) << std::endl;
		get_info_from_directories(results_folder.at(results_folder_size-1-i));
	}

	
	std::ofstream out_file;
	out_file.open(path + "/result_collection.ods");

	for (int j = 0; j < 3; j ++){
		out_file << "\n" <<  retrans[j].name << "\n";

		for (int k = 0; k < 13; k++){
			out_file <<  retrans[j].folder[k].name << "\t";
			if (k == 12){
				out_file << "\n";
			}
		}

		// sum_avg_quality
		for (int k = 0; k < 13; k++){
			out_file <<  retrans[j].folder[k].avg_ret_bitrate << "\t";
			if (k == 12){
				out_file << "\n";
			}
		}

		// sum_switch_num
		for (int k = 0; k < 13; k++){
			out_file <<  retrans[j].folder[k].num_switch << "\t";
			if (k == 12){
				out_file << "\n";
			}
		}

		// sum_avg_switch
		for (int k = 0; k < 13; k++){
			out_file <<  retrans[j].folder[k].switch_amplitude << "\t";
			if (k == 12){
				out_file << "\n";
			}
		}

		// sum_stall_num
		for (int k = 0; k < 13; k++){
			out_file <<  retrans[j].folder[k].rebuf_num << "\t";
			if (k == 12){
				out_file << "\n";
			}
		}

		// sum_stall_duration
		for (int k = 0; k < 13; k++){
			out_file <<  retrans[j].folder[k].minh_rebuff_duration << "\t";
			if (k == 12){
				out_file << "\n";
			}
		}

		// sum_retrans_num
		for (int k = 0; k < 13; k++){
			out_file <<  retrans[j].folder[k].succees_segment_num << "\t";
			if (k == 12){
				out_file << "\n";
			}
		}

		// sum_terminate_num
		for (int k = 0; k < 13; k++){
			out_file <<  retrans[j].folder[k].retrans_num_termination << "\t";
			if (k == 12){
				out_file << "\n";
			}
		}
	}
	out_file.close();
	#endif
	return 0;
}