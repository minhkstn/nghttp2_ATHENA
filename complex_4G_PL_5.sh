#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

ipfw pipe 3 config bw 46722Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28085Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 56852Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 52369Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 46179Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 42592Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28269Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 37945Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 55140Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35054Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27644Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24603Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23164Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8000Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9554Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15183Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 1887Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 42348Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 32934Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30575Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33174Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26981Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29332Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23864Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22441Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17069Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11886Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16617Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12062Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20537Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14871Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2976Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2340Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6276Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11409Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9985Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9414Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12418Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9343Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5747Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 948Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11042Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 1747Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33064Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34797Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 37879Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 47097Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35935Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26258Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23287Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20676Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21548Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14623Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16525Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16770Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14871Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14304Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18909Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20220Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19486Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16922Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17030Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15436Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13712Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15065Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13048Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13923Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14297Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 43Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27242Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19382Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17178Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17265Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19670Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20139Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23018Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20589Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22357Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22894Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26923Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30467Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 32202Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28134Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 57769Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 46096Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 32800Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34963Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 60080Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 64143Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 57858Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 46535Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 43153Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 47415Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 51315Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 51669Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 43220Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 38092Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50806Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 49056Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 38817Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24474Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13403Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 31883Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23602Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14247Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13316Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10331Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5936Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2161Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14709Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6405Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5672Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7451Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14720Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12623Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10648Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9134Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10708Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12563Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6589Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2178Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7300Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5222Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11978Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7236Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7699Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8077Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 3903Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4623Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20643Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14062Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8648Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15534Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13064Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12423Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11398Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9727Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12930Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11323Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9953Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11474Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11463Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12272Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8325Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6783Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19163Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9781Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14040Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13873Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10719Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10622Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22074Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13922Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5435Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13515Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17994Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5402Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21832Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9640Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10988Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8659Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9565Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10234Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10589Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11545Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11823Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11071Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9622Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9187Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10601Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10298Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11161Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10212Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8659Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2318Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 647Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29332Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7937Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7602Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8325Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9603Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12543Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16449Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8893Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23478Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20953Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18224Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12342Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17621Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26286Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28072Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29421Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26873Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30996Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19767Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15798Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24684Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28341Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 31768Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35020Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 38097Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 38809Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 36776Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30830Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27659Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24774Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30567Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25072Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35597Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29670Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 38936Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 49511Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35574Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 39802Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35902Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 36923Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 42251Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 45870Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 36503Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29081Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 48431Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 62431Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33180Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30930Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25136Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29516Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27962Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25436Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23312Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21562Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25547Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26350Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22322Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24011Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20170Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20694Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20220Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8551Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7915Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26225Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27797Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22905Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20078Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16763Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21023Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11242Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30307Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16294Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18264Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20126Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20780Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18915Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24285Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17599Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23519Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16472Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13246Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12812Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13478Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18216Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14422Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17437Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20894Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18793Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19453Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23539Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21140Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23541Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20258Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18343Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21341Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 1888Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27142Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30529Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19421Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20360Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20424Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16035Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16801Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15555Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12948Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11736Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11970Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9464Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15262Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10255Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4044Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 3167Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19328Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10730Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10805Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12358Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7473Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 1800Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 528Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12697Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21660Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15701Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13388Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10061Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8249Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2243Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23336Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9414Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10978Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9134Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10406Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2696Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13771Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 1250Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14159Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7937Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2771Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5769Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10417Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5143Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 765Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10341Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 3494Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5888Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5564Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8675Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19508Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7068Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8173Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12811Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13216Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10044Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8939Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10665Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9274Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8681Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6864Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6604Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 2318Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22201Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8220Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 3839Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5316Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 312Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11657Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 1250Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13302Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9721Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11506Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12681Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10611Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11711Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9624Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7154Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4939Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4345Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12638Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14299Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13949Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15178Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22776Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30520Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28580Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20183Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24721Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24033Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34373Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11305Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29159Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28497Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21346Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28243Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27241Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17388Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18022Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 36258Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34584Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22721Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24044Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26899Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25569Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24549Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25390Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27100Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25390Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23658Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30509Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33167Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 31856Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 31492Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16154Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 31208Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35036Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29175Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33211Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33590Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29835Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 31581Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30854Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28206Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26702Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28466Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27825Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24048Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18079Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19023Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15949Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17426Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21082Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19982Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22969Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21899Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22030Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17758Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17455Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20996Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13615Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26980Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35912Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26934Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27798Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25481Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20629Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21479Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23945Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21425Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19745Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22872Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18899Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4275Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21190Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26342Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15574Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19945Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22155Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20710Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22651Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25287Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23629Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25180Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23132Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23644Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24058Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23216Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25468Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26284Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26512Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27294Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27073Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27450Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27172Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26990Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27504Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26787Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25557Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25296Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29626Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34538Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27067Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27534Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27229Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27644Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29682Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26143Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27490Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26351Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25901Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30363Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26852Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29861Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30194Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33300Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 32931Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 32931Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34929Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33942Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33527Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34050Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30637Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 36659Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15573Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 43128Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28883Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28614Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 42807Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29496Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28437Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28814Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27764Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22229Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33913Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 38642Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33984Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33904Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34261Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33678Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33996Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33883Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 32152Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28512Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25101Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26637Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26313Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29120Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28996Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26733Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26058Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23380Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22180Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23123Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20872Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19848Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19449Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14287Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15660Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5460Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21626Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4610Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20511Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11096Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6556Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11474Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26055Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22860Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21756Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21024Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20025Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24160Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22223Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23741Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22628Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24712Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24315Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30627Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34831Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27865Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29035Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27542Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30606Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21767Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29733Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28845Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28558Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27512Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25480Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16837Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19049Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26595Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13571Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4685Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 118Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23069Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17753Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 41709Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35185Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 40047Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 43166Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34652Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 49938Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 54755Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 43153Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28540Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22338Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21007Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17588Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14193Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18037Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21236Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20856Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23929Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21928Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26669Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 28562Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25477Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23190Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23627Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18300Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7951Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19628Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 29984Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26528Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18385Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26184Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22581Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25773Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 30065Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21287Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27819Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23724Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25360Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23246Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20954Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27859Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 24248Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21503Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20112Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18257Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14375Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20467Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9953Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11312Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11538Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10762Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22274Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 3251Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22355Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10395Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9743Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 3067Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9031Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10552Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13566Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8778Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9403Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8012Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5941Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12396Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15113Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12239Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9640Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12940Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14666Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14687Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10812Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11596Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16833Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11452Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4691Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10918Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17665Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13905Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10007Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9220Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 9285Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8152Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6923Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 3623Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 452Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17211Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6028Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5898Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11333Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14321Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12310Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10917Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14112Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12622Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12517Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13925Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16624Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14336Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22554Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23394Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26810Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20521Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6211Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26438Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 4919Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 34855Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22957Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20871Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20788Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20978Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22217Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25128Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19543Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18705Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18704Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16477Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 31477Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21704Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22672Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18828Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20899Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15757Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18714Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12482Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11506Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14644Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16380Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20253Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19825Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19739Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18883Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19431Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17917Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17820Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19460Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17529Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18629Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15507Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19939Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19971Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21454Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5274Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 17481Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 33951Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19152Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19670Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18030Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16876Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15961Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16152Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16251Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 50bit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 35692Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7885Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 7829Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 22462Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21321Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11407Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12941Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13953Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 19921Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23700Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26280Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 26412Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27080Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 27845Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 25898Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23255Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21045Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21853Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 16175Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 8914Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 3432Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 49Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12471Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 18246Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 6869Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 1930Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 118Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10471Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 5877Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 15884Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 10573Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 11404Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 12897Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 13388Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 14245Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23428Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 21919Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 23844Kbit/s plr 0.05
sleep 1.0s

ipfw pipe 3 config bw 20936Kbit/s plr 0.05
sleep 1.0s

ipfw -q flush
ipfw -q pipe flush