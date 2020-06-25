#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

ipfw pipe 3 config bw 14297Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16692Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10315Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 595Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11745Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13825Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13854Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13287Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14422Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23293Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37429Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46333Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 33972Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 30484Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16031Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26628Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35556Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 64014Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49925Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57112Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56678Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56817Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 55128Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 45672Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10101Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16457Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26648Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28831Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 28496Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34713Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32122Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26477Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33521Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32342Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 33589Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10358Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13206Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12973Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12742Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10286Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11762Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11913Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9435Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23092Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21088Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19629Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 8782Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8329Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10253Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11392Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8789Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18545Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20699Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22098Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18317Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10899Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10899Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11282Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45971Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43480Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47567Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 47686Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47857Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44234Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42919Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 35464Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35464Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2922Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16808Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19635Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53496Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48777Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 45231Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51868Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54871Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58597Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7974Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7974Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2683Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16545Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16725Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17493Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16090Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16734Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17264Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46920Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40628Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50736Kbit/s delay 72ms
sleep 5s

ipfw pipe 3 config bw 9429Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18683Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17513Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32927Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35959Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 54237Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49983Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40822Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44177Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53744Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 28606Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12073Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16270Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16040Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15116Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26781Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 49077Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82516Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 100617Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74982Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71363Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 60213Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29709Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60157Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88551Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 69963Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 80168Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89843Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63216Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 61392Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66313Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80107Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 37546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1106Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25261Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37578Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32076Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46327Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 28174Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31458Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 39531Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42718Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41327Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 3870Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2741Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15053Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15392Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14441Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15065Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13819Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14901Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14030Kbit/s delay 72ms
sleep 2s

ipipfw pipe 3 config bw 9067Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9067Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11298Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14904Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14933Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13735Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25504Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33361Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 45322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47363Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48219Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46530Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7743Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7743Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3328Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15011Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14791Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27464Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31206Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46824Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53178Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 49495Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44862Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46648Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13950Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13950Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3806Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14697Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14964Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13257Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13784Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23402Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 44593Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48365Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31021Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38395Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8104Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4830Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13044Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30184Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37328Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27500Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30294Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22285Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18892Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20685Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27051Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34448Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2706Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11229Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8350Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10413Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8526Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7708Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11524Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16450Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24398Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30837Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2402Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 124Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11132Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13374Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11266Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11201Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28187Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40794Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32764Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11923Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11259Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6353Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3432Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26117Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33145Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 42172Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44991Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47626Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35910Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51267Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 65188Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 32982Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11314Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2302Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10736Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7889Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14328Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11185Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5595Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11321Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30285Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30714Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23462Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27701Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3115Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6339Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10825Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12010Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15491Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27035Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32825Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28941Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17887Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16112Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 37459Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2998Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7821Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4667Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8529Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7141Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9213Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9279Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9988Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17203Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22037Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 25984Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5018Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5822Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8282Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11533Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11876Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 27007Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38862Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35890Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27562Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26075Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7794Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2586Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 1123Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 684Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 300Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 566Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 277Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 1018Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 557Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 657Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 734Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 521Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 421Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 446Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1021Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 555Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 702Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 702Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 192Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1894Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1758Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1573Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 857Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1285Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 702Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 535Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 982Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1214Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 440Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 357Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 434Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 357Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 368Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 78Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 67Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 72ms
sleep 8s

ipfw pipe 3 config bw 2132Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 55Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9175Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13829Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19051Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18347Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16047Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8778Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46672Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 177097Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 220019Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 252345Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 250604Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 289095Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 259671Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 244061Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 237238Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 218967Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 6952Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18496Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18146Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50229Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75892Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 115907Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 162454Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 148029Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 183876Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 184955Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 119372Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2679Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9930Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18593Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18964Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18790Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18916Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20218Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18426Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19471Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47004Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 131535Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78627Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 20659Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23323Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23677Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24325Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25205Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23600Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23710Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24244Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24364Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23744Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23033Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23033Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58782Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84678Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 121105Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 227557Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 236301Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 253515Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 272324Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 261105Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 283492Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 285537Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 239558Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 23143Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29679Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30732Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29098Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 138937Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 170759Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 153994Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 167329Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 167972Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 93352Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 215308Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 261025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 257446Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 280552Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 211629Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 211237Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 245778Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 239494Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 236616Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 200156Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11824Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19271Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20049Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20163Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20106Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19319Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20186Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19844Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 83987Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 45139Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20103Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30873Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 30622Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31921Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28849Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29849Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31931Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 31126Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30127Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7210Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2574Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18030Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88337Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 230002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 277629Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 223237Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 245576Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 253755Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 183606Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 66691Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66691Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22955Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 111987Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 238715Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 227227Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 234669Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 170711Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 213480Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 250442Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 223698Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 239565Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 107376Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 18158Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17914Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27624Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70223Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88387Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 166272Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 192828Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config b15156786Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 127009Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 157975Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 145770Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 145770Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 127248Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 146693Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 140493Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 140599Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 160228Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 138533Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 130546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 115552Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 114045Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18512Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18512Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2197Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17160Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 55017Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 101351Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 104514Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 115476Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 95783Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 91463Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84369Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 97856Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7207Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7207Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4955Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25127Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23299Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26205Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70461Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58644Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 71836Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56951Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60284Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45396Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59850Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11320Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11320Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7491Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18578Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58450Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72132Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 62923Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71457Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 71227Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 79487Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 67496Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70552Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82811Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12174Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64217Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70700Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 68052Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74571Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 61561Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 69520Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41716Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66509Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 76317Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 61888Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1253Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1253Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26525Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 52547Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 52590Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51820Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 67206Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51160Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50477Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57918Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59578Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 55173Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 55209Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22568Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4625Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14396Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13789Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12290Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13108Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13492Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12318Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9770Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10767Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13027Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10651Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4077Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12736Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10986Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10035Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18691Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27263Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30785Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37956Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33706Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 36022Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6571Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5000Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11033Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11986Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13910Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10042Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11487Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8907Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11741Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10963Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10860Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12858Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3928Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13653Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12902Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16940Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17573Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24826Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32934Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 36541Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43225Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44019Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 46096Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1998Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3984Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15935Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16335Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17073Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 28074Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34880Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37612Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40793Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35189Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41745Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 27075Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12258Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28229Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42187Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71001Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 75641Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 99699Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75720Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 83492Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89388Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 86454Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 62799Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15396Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18278Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config b1818332Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17132Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17758Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17717Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18348Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16996Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17958Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17781Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7801Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7801Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23581Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23156Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23516Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23079Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 24855Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22733Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20192Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18438Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19020Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31156Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21933Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 16607Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16439Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16222Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38807Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50551Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 62755Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 69141Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40236Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48106Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59623Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21008Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21008Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16079Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15842Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16835Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16212Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13892Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14115Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15114Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16815Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17253Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4903Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4903Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 114Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18231Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18248Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18527Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17373Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14607Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17718Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18491Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18215Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18367Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 623Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 623Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6719Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18262Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18513Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19095Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16372Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 81968Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 75751Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 69737Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 86696Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 76499Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 76499Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12433Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12433Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5052Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20007Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17814Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18784Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17450Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16011Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18561Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17045Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17235Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16664Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16595Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7388Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16151Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16414Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14863Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16956Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14895Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15204Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16473Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16296Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16382Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15295Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 26830Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 85330Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70103Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 67130Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56982Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 67998Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 85618Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 80082Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 87773Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89232Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 81248Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4640Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9798Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16317Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57753Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 52884Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84783Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72890Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80923Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 72448Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 77825Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 78763Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10882Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16087Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16770Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16900Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16690Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30852Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63834Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70597Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 55289Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 82325Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11724Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14884Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 40608Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 55738Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70215Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59840Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 68646Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48210Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 68354Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 34773Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 24249Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41112Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 33067Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48726Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49314Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46333Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43758Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44769Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 62101Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 34276Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8555Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32657Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 56739Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59619Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63490Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63922Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 69909Kbit/s delay 