#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

ipfw pipe 3 config bw 46722Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28085Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 56852Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 52369Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 46179Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 42592Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28269Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 37945Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 55140Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35054Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27644Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24603Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23164Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8000Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9554Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15183Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 1887Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 42348Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 32934Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30575Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33174Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26981Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29332Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23864Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22441Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17069Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11886Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16617Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12062Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20537Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14871Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2976Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2340Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6276Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11409Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9985Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9414Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12418Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9343Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5747Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 948Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11042Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 1747Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33064Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34797Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 37879Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 47097Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35935Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26258Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23287Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20676Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21548Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14623Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16525Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16770Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14871Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14304Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18909Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20220Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19486Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16922Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17030Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15436Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13712Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15065Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13048Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13923Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14297Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 43Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27242Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19382Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17178Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17265Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19670Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20139Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23018Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20589Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22357Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22894Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26923Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30467Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 32202Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28134Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 57769Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 46096Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 32800Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34963Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 60080Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 64143Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 57858Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 46535Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 43153Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 47415Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 51315Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 51669Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 43220Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 38092Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50806Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 49056Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 38817Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24474Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13403Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 31883Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23602Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14247Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13316Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10331Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5936Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2161Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 14709Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6405Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5672Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7451Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14720Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12623Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10648Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9134Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10708Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12563Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6589Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2178Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 7300Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5222Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11978Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7236Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7699Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8077Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 3903Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4623Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20643Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14062Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8648Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15534Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13064Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12423Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11398Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9727Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12930Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11323Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9953Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11474Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11463Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12272Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8325Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6783Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19163Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9781Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14040Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13873Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10719Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10622Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 22074Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13922Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5435Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 13515Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17994Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5402Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 21832Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9640Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10988Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8659Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9565Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10234Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10589Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11545Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11823Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11071Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9622Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9187Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10601Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10298Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11161Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10212Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8659Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2318Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 647Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 29332Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7937Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7602Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8325Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9603Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12543Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16449Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8893Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23478Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20953Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18224Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12342Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17621Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26286Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28072Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29421Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26873Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30996Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19767Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15798Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24684Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28341Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 31768Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35020Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 38097Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 38809Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 36776Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30830Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27659Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24774Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30567Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25072Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35597Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29670Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 38936Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 49511Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35574Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 39802Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35902Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 36923Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 42251Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 45870Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 36503Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29081Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 48431Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 62431Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33180Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30930Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25136Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29516Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27962Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25436Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23312Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21562Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25547Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26350Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22322Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24011Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20170Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20694Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20220Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8551Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7915Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26225Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27797Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22905Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20078Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16763Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21023Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11242Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30307Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16294Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18264Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20126Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20780Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18915Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24285Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17599Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23519Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16472Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13246Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12812Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13478Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18216Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14422Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17437Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20894Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18793Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19453Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23539Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21140Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23541Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20258Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18343Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21341Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 1888Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27142Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30529Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19421Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20360Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20424Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16035Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16801Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15555Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12948Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11736Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11970Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9464Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15262Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10255Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4044Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 3167Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19328Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10730Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10805Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12358Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7473Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 1800Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 528Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 12697Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21660Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15701Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13388Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10061Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8249Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2243Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 23336Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9414Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10978Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9134Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 10406Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2696Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13771Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 1250Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14159Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7937Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2771Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 5769Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10417Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5143Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 765Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10341Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 3494Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5888Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5564Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8675Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19508Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7068Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8173Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12811Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13216Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10044Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8939Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10665Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9274Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8681Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6864Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6604Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 2318Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 22201Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8220Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 3839Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5316Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 312Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11657Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 1250Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13302Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9721Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11506Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12681Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10611Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11711Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9624Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7154Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4939Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4345Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12638Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14299Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13949Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15178Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22776Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30520Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28580Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20183Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24721Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24033Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34373Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11305Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29159Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28497Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21346Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28243Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27241Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17388Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18022Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 36258Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34584Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22721Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24044Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26899Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25569Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24549Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25390Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27100Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25390Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23658Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30509Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33167Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 31856Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 31492Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16154Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 31208Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35036Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29175Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33211Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33590Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29835Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 31581Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30854Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28206Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26702Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28466Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27825Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24048Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18079Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19023Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15949Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17426Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21082Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19982Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22969Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21899Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22030Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17758Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17455Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20996Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13615Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26980Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35912Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26934Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27798Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25481Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20629Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21479Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23945Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21425Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19745Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22872Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18899Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4275Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21190Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26342Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15574Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19945Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22155Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20710Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22651Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25287Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23629Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25180Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23132Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23644Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24058Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23216Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25468Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26284Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26512Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27294Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27073Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27450Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27172Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26990Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27504Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26787Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25557Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25296Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29626Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34538Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27067Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27534Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27229Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27644Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29682Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26143Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27490Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26351Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25901Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30363Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26852Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29861Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30194Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33300Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 32931Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 32931Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34929Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33942Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33527Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34050Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30637Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 36659Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15573Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 43128Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28883Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28614Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 42807Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29496Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28437Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28814Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27764Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22229Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33913Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 38642Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33984Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33904Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34261Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33678Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33996Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33883Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 32152Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28512Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25101Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26637Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26313Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29120Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28996Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26733Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26058Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23380Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22180Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23123Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20872Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19848Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19449Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14287Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15660Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5460Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21626Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4610Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20511Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11096Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6556Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 11474Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26055Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22860Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21756Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21024Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20025Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24160Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22223Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23741Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22628Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24712Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24315Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30627Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34831Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27865Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29035Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27542Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30606Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21767Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29733Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28845Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28558Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27512Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25480Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16837Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19049Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26595Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13571Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4685Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 118Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23069Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17753Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 41709Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 35185Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 40047Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 43166Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34652Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 49938Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 54755Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 43153Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28540Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22338Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21007Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17588Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14193Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18037Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21236Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20856Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23929Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21928Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26669Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 28562Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25477Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23190Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23627Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18300Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7951Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19628Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 29984Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26528Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18385Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26184Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22581Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25773Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 30065Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21287Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27819Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23724Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25360Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23246Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20954Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27859Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 24248Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21503Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20112Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18257Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14375Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20467Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9953Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11312Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11538Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10762Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 22274Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 3251Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22355Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10395Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9743Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 3067Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9031Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10552Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13566Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8778Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9403Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8012Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5941Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12396Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15113Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12239Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9640Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12940Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14666Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14687Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10812Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11596Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16833Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11452Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4691Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10918Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17665Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13905Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10007Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9220Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 9285Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8152Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6923Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 3623Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 452Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 17211Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6028Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5898Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11333Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14321Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12310Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10917Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14112Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12622Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12517Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13925Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16624Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14336Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22554Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23394Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26810Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20521Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6211Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26438Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 4919Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 34855Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22957Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20871Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20788Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20978Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22217Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25128Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19543Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18705Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18704Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16477Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 31477Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21704Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22672Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18828Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20899Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15757Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18714Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12482Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11506Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14644Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16380Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20253Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19825Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19739Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18883Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19431Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17917Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17820Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19460Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17529Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18629Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15507Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19939Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19971Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21454Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5274Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 17481Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 33951Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19152Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19670Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18030Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16876Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15961Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16152Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16251Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 50bit/s 
sleep 1.0s

ipfw pipe 3 config bw 35692Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7885Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 7829Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 22462Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21321Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11407Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12941Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13953Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 19921Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23700Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26280Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 26412Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27080Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 27845Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 25898Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23255Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21045Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21853Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 16175Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 8914Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 3432Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 49Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12471Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 18246Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 6869Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 1930Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 118Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10471Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 5877Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 15884Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 10573Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 11404Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 12897Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 13388Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 14245Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23428Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 21919Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 23844Kbit/s 
sleep 1.0s

ipfw pipe 3 config bw 20936Kbit/s 
sleep 1.0s

ipfw -q flush
ipfw -q pipe flush