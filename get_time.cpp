#include <time.h>
#include <string>
#include <iostream>
#include <stdio.h>
// #include <conio.h>
#include <Windows.h>

long gettimezone(){
	TIME_ZONE_INFORMATION tzinfo;
	GetTimeZoneInformation(&tzinfo);
	return tzinfo.Bias;
}

unsigned long tsfstr(std::string datetime="1970.01.01 00:00:00"){
	if(datetime.length()<19){std::cout<<"invalid string - cant convert to timestamp"; _getch();}
	struct tm tm;
	tm.tm_year=atoi(datetime.substr(0,4).c_str())-1900;
	tm.tm_mon=atoi(datetime.substr(5, 2).c_str())-1;
	tm.tm_mday=atoi(datetime.substr(8, 2).c_str());
	tm.tm_hour=atoi(datetime.substr(11, 2).c_str());
	tm.tm_min=atoi(datetime.substr(14, 2).c_str());
	tm.tm_sec=atoi(datetime.substr(17, 2).c_str());
	
	char buff[80];
	strftime(buff, 80, "%Y.%m.%d %H:%M:%S", &tm);
	std::cout<<"should be: "<<std::string(buff)<<"\n";

	return mktime(&tm);	
}

int main(){
	std::cout<<tsfstr("2010.01.31 00:00:00");
	_getch();
}