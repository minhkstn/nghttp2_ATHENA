/*gcc 9.3 c++17*/
/**sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 900 --slave /usr/bin/g++ g++ /usr/bin/g++-9 --slave /usr/bin/gcov gcov /usr/bin/gcov-9/
/*Build: g++ -o Results_collecttion Results_collecttion.cc -std=c++17*/
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

const std::string ABRS[3] = {"ABR_AGG", "ABR_BBA", "ABR_SARA"};
const std::string RETRANSS[4] = {"RETRANS_NONE_STANDARD",
								"RETRANS_PROPOSAL_STANDARD",
								"RETRANS_PROPOSAL_OPTIMIZATION",
								"RETRANS_SQUAD_STANDARD"
								};

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

ABR abr[3];

void initialize(){
	for (int i = 0; i < 3; i++){
		abr[i].name = ABRS[i];
		
		for (int j = 0; j < 4; j++){
			std::cout << i << ' '<< j << std::endl;
			abr[i].retrans[j].name = RETRANSS[j];
		}
	}
}

int get_abr_idx(std::string abr_str){
	std::cout << "abr string: " << abr_str << std::endl;
	for (int i = 0; i < 3; i++){
		if (abr_str == ABRS[i]){
			return i;
		}
	}
	std::cerr << "[ERROR] No ABR available" << std::endl;
	exit(EXIT_FAILURE);
}

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
    	if (temp.size() != 16){
    		r.erase(a);
    		a--;
    	}
    }

    std::cout << "After deleteing " << std::endl;
    for (auto a = r.begin(); a != r.end(); a++)
    	std::cout << *a << std::endl;
    	
    return r;
}

void get_info_from_directories(std::string s_vector){
	std::vector<std::string> temp;
	boost::split(temp, s_vector, boost::is_any_of("/"));
	int abr_idx = get_abr_idx(temp.at(13));
	int retrans_idx = get_retrans_idx(temp.at(14));
	std::cout << "folder: " << temp.at(15) << std::endl;

	FOLDER tmp_folder;
	tmp_folder.name = temp.at(15);

	abr[abr_idx].retrans[retrans_idx].folder.push_back(tmp_folder);

	int folder_idx = abr[abr_idx].retrans[retrans_idx].folder.size()-1;

	// get metrics
	std::ifstream path_file (s_vector + "/parameters.txt");
	std::string str;
	int line_no = 0;
	int dash_line_idx = 0;
	std::vector<std::string> metric_temp;

	while(std::getline(path_file, str) && dash_line_idx < 3){
		
		if (dash_line_idx == 2 && str[1] != '-'){
			line_no++;

			std::cout << str << std::endl;

			boost::split(metric_temp, str, boost::is_any_of(":"));
			std::vector<std::string> str_1;
			boost::split(str_1, metric_temp.at(1), boost::is_any_of(" "));
			switch (line_no){
				case 1:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).num_of_request = str_1.at(1);
					std::cout << "\t num_request: " << str_1.at(1) << std::endl;
					break;
				case 2:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).avg_ret_bitrate = str_1.at(1);
					std::cout << "\t avg_ret_bitrate: " << str_1.at(1) << std::endl;
					break;
				case 3:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).avg_ret_idx = str_1.at(1);
					std::cout << "\t avg_ret_idx: " << str_1.at(1) << std::endl;
					break;
				case 4:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).avg_new_bitrate = str_1.at(1);
					std::cout << "\t avg_new_bitrate: " << str_1.at(1) << std::endl;
					break;
				case 5:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).avg_old_idx = str_1.at(1);
					std::cout << "\t avg_old_idx: " << str_1.at(1) << std::endl;
					break;
				case 6:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).lowest_buff = str_1.at(1);
					std::cout << "\t lowest_buff: " << str_1.at(1) << std::endl;
					break;
				case 7:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).num_switch = str_1.at(1);
					std::cout << "\t num_switch: " << str_1.at(1) << std::endl;
					break;
				case 8:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).num_switch_no_retrans = str_1.at(1);
					std::cout << "\t num_switch_no_retrans: " << str_1.at(1) << std::endl;
					break;
				case 9:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).retrans_num_termination = str_1.at(1);
					std::cout << "\t retrans_num_termination: " << str_1.at(1) << std::endl;
					break;
				case 10:
					boost::split(metric_temp, str, boost::is_any_of(" "));
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).succees_segment_num = str_1.at(1);
					std::cout << "\t succees_segment_num: " << str_1.at(1) << std::endl;
					break;
				case 11:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).amount_waste_data = str_1.at(1);
					std::cout << "\t amount_waste_data: " << str_1.at(1) << std::endl;
					break;
				case 12:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).rebuf_num = str_1.at(1);
					std::cout << "\t rebuf_num: " << str_1.at(1) << std::endl;
					break;
				case 13:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).minh_rebuff_duration = str_1.at(1);
					std::cout << "\t minh_rebuff_duration: " << str_1.at(1) << std::endl;
					break;
				case 14:
					abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).start_play_time = str_1.at(1);
					std::cout << "\t start_play_time: " << str_1.at(1) << std::endl;
					break;
				case 15:
					if (str.size() == 0)
						break;
					else{
						
						boost::split(metric_temp, str, boost::is_any_of(" "));
						abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).qoe_itu = metric_temp.at(3);
						std::cout << "\t qoe_itu: " << metric_temp.at(3) << std::endl;
						break;
					}
				case 16:
					if (str.size() == 0)
						break;
					else{
						
						boost::split(metric_temp, str, boost::is_any_of(" "));
						abr[abr_idx].retrans[retrans_idx].folder.at(folder_idx).qoe_yin = metric_temp.at(3);
						std::cout << "\t qoe_yin: " << metric_temp.at(3) << std::endl;
						break;
					}
				default:
					break;		
			}			
		}

		if (str[0] == '-' && str[1] == '-')
			dash_line_idx ++;

	}
}


int main(){
	std::vector<std::string> results_folder;
	std::string path;// = "/home/minh/ownCloud/Documents/1_Proposal/1_Retransmission/3_Journal/Experimental-Results/H2BR_HEVC/NETWORK_4G/PL_0/SD_2000ms/ABR_AGG/RETRANS_PROPOSAL_STANDARD";
	std::cin >> path;
	results_folder = get_directories(path);
	
	std::sort(results_folder.begin(), results_folder.end());

	std::cout << "After sorting" << std::endl;
	for (auto a = results_folder.begin(); a != results_folder.end(); a++){
		std::cout << *a << std::endl;
	}

	#if 1
	initialize();
	// for (auto a = results_folder.begin(); a != results_folder.end(); a++){
	// 	std::cout << "sub folder: " << *a << std::endl;
	// 	get_info_from_directories(*a);
	// }
	int results_folder_size = results_folder.size();
	for (int i = 0; i < results_folder_size; i++){
		std::cout << "sub folder: " << results_folder.at(results_folder_size-1-i) << std::endl;
		get_info_from_directories(results_folder.at(results_folder_size-1-i));
	}

	
	std::ofstream out_file;
	out_file.open(path + "/result_collection.ods");
	for (int i = 0; i < 3; i ++){
		out_file << "\n\n" << abr[i].name << std::endl;

		for (int j = 0; j < 4; j ++){
			out_file << "\n" << abr[i].retrans[j].name << "\n";

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].name << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].num_of_request << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].avg_ret_bitrate << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].avg_ret_idx << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].avg_new_bitrate << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].avg_old_idx << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].lowest_buff << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].num_switch << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].num_switch_no_retrans << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].retrans_num_termination << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].succees_segment_num << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].amount_waste_data << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].rebuf_num << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].minh_rebuff_duration << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].start_play_time << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].qoe_itu << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}

			for (int k = 0; k < 13; k++){
				out_file << abr[i].retrans[j].folder[k].qoe_yin << "\t";
				if (k == 12){
					out_file << "\n";
				}
			}
		}
	}
	out_file.close();
	#endif
	return 0;
}