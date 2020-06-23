#include <iostream>
#include <unistd.h>
// #include <windows.h>

int main(){
 for (int i = 0; i < 6000; i ++){
	std::cout << '\a';
	usleep(250000);
 }
	return 0;
}