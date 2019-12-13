#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from 192.168.168.1 to me
ipfw add pipe 3 ip from me to 192.168.168.1

ipfw pipe 3 config bw 46722Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28085Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 56852Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 52369Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 46179Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42592Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28269Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 37945Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 55140Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35054Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27644Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24603Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23164Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8000Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9554Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15183Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1887Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42348Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32934Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30575Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33174Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26981Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29332Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23864Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22441Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17069Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11886Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16617Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12062Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20537Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14871Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2976Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2340Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6276Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11409Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9985Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9414Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12418Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9343Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5747Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 948Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11042Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1747Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33064Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34797Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 37879Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 47097Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35935Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26258Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23287Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20676Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21548Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14623Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16525Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16770Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14871Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14304Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18909Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20220Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19486Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16922Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17030Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15436Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13712Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15065Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13923Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14297Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27242Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19382Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17178Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17265Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19670Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20139Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23018Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20589Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22357Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22894Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26923Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30467Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32202Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28134Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 57769Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 46096Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32800Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34963Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60080Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 64143Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 57858Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 46535Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43153Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 47415Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 51315Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 51669Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43220Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38092Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 50806Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 49056Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38817Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24474Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13403Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31883Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23602Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14247Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13316Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10331Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5936Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2161Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14709Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6405Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5672Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7451Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14720Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12623Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10648Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9134Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10708Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12563Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6589Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2178Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7300Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5222Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11978Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7236Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7699Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8077Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3903Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4623Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20643Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14062Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8648Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15534Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13064Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12423Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11398Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9727Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12930Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11323Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9953Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11474Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11463Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12272Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8325Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6783Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19163Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9781Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14040Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13873Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10719Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10622Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22074Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13922Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5435Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13515Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17994Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5402Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21832Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9640Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10988Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8659Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9565Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10234Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10589Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11545Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11823Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11071Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9622Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9187Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10601Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10298Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11161Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10212Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8659Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2318Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 647Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29332Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7937Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7602Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8325Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9603Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12543Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16449Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8893Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23478Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20953Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18224Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12342Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17621Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26286Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28072Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29421Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26873Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30996Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19767Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15798Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24684Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28341Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31768Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35020Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38097Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38809Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36776Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30830Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27659Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24774Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30567Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25072Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35597Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29670Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38936Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 49511Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35574Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39802Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35902Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36923Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42251Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 45870Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36503Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29081Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 48431Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 62431Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33180Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30930Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25136Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29516Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27962Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25436Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23312Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21562Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25547Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26350Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22322Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24011Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20170Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20694Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20220Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8551Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7915Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26225Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27797Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22905Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20078Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16763Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21023Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11242Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30307Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16294Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18264Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20126Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20780Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18915Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24285Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17599Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23519Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16472Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13246Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12812Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13478Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18216Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14422Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17437Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20894Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18793Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19453Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23539Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21140Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23541Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20258Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18343Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21341Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1888Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27142Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30529Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19421Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20360Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20424Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16035Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16801Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15555Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12948Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11736Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11970Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9464Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15262Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10255Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4044Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3167Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19328Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10730Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10805Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12358Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7473Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1800Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 528Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12697Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21660Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15701Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13388Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10061Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8249Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2243Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23336Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9414Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10978Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9134Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10406Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2696Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13771Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1250Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14159Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7937Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2771Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5769Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10417Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5143Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 765Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10341Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3494Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5888Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5564Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8675Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19508Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7068Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8173Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12811Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13216Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10044Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8939Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10665Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9274Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8681Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6864Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6604Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2318Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22201Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8220Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3839Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5316Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 312Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11657Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1250Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13302Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9721Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11506Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12681Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10611Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11711Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9624Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7154Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4939Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4345Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12638Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14299Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13949Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15178Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22776Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30520Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28580Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20183Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24721Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24033Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34373Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11305Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29159Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28497Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21346Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28243Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27241Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17388Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18022Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36258Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34584Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22721Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24044Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26899Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25569Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24549Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25390Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27100Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25390Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23658Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30509Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33167Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31856Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31492Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16154Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31208Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35036Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29175Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33211Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33590Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29835Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31581Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30854Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28206Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26702Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28466Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27825Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18079Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19023Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15949Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17426Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21082Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19982Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22969Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21899Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22030Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17758Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17455Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20996Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13615Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26980Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35912Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26934Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27798Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25481Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20629Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21479Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23945Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21425Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19745Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22872Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18899Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4275Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21190Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26342Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15574Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19945Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22155Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20710Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22651Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25287Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23629Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25180Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23132Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23644Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24058Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23216Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25468Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26284Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26512Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27294Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27073Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27450Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27172Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26990Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27504Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26787Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25557Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25296Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29626Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34538Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27067Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27534Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27229Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27644Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29682Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26143Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27490Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26351Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25901Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30363Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26852Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29861Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30194Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33300Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32931Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32931Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34929Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33942Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33527Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34050Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30637Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36659Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15573Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43128Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28883Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28614Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42807Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29496Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28437Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28814Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27764Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22229Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33913Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38642Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33984Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33904Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34261Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33678Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33996Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33883Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32152Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28512Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25101Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26637Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26313Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29120Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28996Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26733Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26058Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23380Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22180Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23123Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20872Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19848Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19449Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14287Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15660Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5460Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21626Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4610Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20511Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11096Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6556Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11474Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26055Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22860Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21756Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21024Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20025Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24160Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22223Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23741Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22628Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24712Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24315Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30627Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34831Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27865Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29035Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27542Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30606Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21767Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29733Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28845Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28558Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27512Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25480Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16837Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19049Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26595Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13571Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4685Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 118Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23069Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17753Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 41709Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35185Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 40047Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43166Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34652Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 49938Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 54755Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43153Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28540Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22338Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21007Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17588Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14193Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18037Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21236Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20856Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23929Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21928Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26669Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28562Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25477Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23190Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23627Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18300Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7951Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19628Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29984Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26528Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18385Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26184Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22581Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25773Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30065Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21287Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27819Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23724Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25360Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23246Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20954Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27859Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24248Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21503Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20112Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18257Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14375Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20467Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9953Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11312Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11538Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10762Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22274Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3251Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22355Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10395Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9743Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3067Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9031Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10552Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13566Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8778Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9403Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8012Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5941Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12396Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15113Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12239Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9640Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12940Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14666Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14687Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10812Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11596Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16833Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11452Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4691Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10918Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17665Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13905Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10007Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9220Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9285Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8152Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6923Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3623Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 452Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17211Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6028Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5898Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11333Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14321Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12310Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10917Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14112Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12622Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12517Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13925Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16624Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14336Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22554Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23394Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26810Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20521Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6211Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26438Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4919Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34855Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22957Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20871Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20788Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20978Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22217Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25128Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19543Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18705Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18704Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16477Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31477Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21704Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22672Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18828Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20899Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15757Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18714Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12482Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11506Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14644Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16380Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20253Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19825Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19739Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18883Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19431Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17917Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17820Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19460Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17529Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18629Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15507Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19939Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19971Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21454Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5274Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17481Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33951Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19152Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19670Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18030Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16876Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15961Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16152Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16251Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35692Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7885Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7829Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22462Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21321Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11407Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12941Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13953Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19921Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23700Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26280Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26412Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27080Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27845Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25898Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23255Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21045Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21853Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16175Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8914Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3432Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 49Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12471Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18246Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6869Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1930Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 118Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10471Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5877Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15884Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10573Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11404Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12897Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13388Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14245Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23428Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21919Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23844Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20936Kbit/s delay 25ms
sleep 1.0s

ipfw -q flush
ipfw -q pipe flush