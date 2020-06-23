#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 udp from any to me
ipfw add pipe 3 udp from me to any

ipfw pipe 3 config bw 162936Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7390Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17489Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19148Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18007Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18102Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17593Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18399Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19401Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19259Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 14680Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11096Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17380Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17284Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17781Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18581Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17352Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18616Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17733Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6823Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 489Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16325Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17467Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16993Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17451Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16420Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16743Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18457Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27881Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 69398Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 6304Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16948Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17242Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16819Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17311Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17566Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16762Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 65865Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74542Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54247Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 11523Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16099Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16718Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18145Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17539Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17631Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17958Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17361Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16732Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16538Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7256Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 15338Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17348Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15737Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15389Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15146Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16916Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17476Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17874Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18946Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 3740Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2728Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16871Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16594Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16644Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17918Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18041Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18644Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16807Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15819Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18422Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17501Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16457Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17846Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18982Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17662Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17842Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29545Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66733Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84956Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 156855Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9301Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18131Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17087Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16918Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16492Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17140Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18912Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18769Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18770Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 14192Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 596Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16275Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88604Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 174137Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 224635Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 170809Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 147298Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 217342Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 215490Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 214670Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 91274Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15857Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17202Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17181Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17876Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17402Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35844Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 119311Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 119722Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 126012Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 193673Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 116179Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 93Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3017Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18424Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19964Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18697Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17577Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18385Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18577Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20502Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70798Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 173743Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 31746Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 155Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20466Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78458Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 106181Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 104364Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 144991Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 158011Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 193637Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 178931Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 154121Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 135747Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 27402Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 125774Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 229178Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 169368Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 211687Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 208405Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 172840Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 191269Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 209023Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 213721Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 149942Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 15030Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 67889Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 108555Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 93884Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 95484Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 94422Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 96174Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 85207Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74284Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 100104Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 77641Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 14088Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16751Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16599Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18007Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17525Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17280Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16910Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18101Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17971Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17527Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11475Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8295Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16709Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16105Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16174Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15575Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14728Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14875Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 40625Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49431Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49166Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13518Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13518Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15119Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40343Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47817Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63730Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78595Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80763Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 63047Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58925Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71232Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 22654Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2201Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13896Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32063Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 61417Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42462Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43693Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49790Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43492Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 34468Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41011Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19836Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1458Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13542Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7776Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8417Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20482Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24618Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20897Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18795Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18694Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12119Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4606Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2219Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9997Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9139Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10691Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12165Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9156Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10922Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11337Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10740Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 658Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1456Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13945Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24100Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27977Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 48414Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42741Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27194Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49532Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38154Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 41927Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7238Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2868Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11887Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10846Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11110Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10961Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12776Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22050Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 36101Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64647Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 73628Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46013Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46013Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1861Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2057Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13055Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11781Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22837Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 45948Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42413Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58484Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24069Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44560Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57561Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 52350Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2447Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3052Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16024Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15554Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26536Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 49989Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40455Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41459Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80807Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 99572Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 86729Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 84543Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 1581Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16166Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16361Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16681Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16325Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16003Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60039Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 107578Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66557Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 99556Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 87939Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 8518Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35685Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 85249Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 85670Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89956Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 89194Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 105573Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 95537Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 97304Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 94700Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 97732Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 7581Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16405Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16223Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15713Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14337Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15481Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14911Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16717Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15046Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16227Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13190Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 11130Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38811Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44095Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82633Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 73260Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82318Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 56631Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64867Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 62109Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66357Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71683Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 10067Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15120Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15459Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15631Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15842Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32007Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 59029Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80080Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72509Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84073Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29097Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 13738Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14756Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17167Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16786Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16582Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7605Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7108Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10751Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9624Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 5171Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 9924Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12209Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22271Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22490Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15721Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26151Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 22623Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27751Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18717Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14699Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 113Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16884Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 29818Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43133Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47573Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49091Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42248Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35356Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 47970Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48387Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12479Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 114Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15991Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17014Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16756Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17551Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18087Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17070Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15961Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16907Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9609Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23764Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 35912Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32195Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34409Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32041Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29574Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34882Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 40578Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34989Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 2579Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11670Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13351Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11303Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10669Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10298Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10730Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13366Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12533Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11504Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 4497Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14665Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11525Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 26725Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21078Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28703Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27709Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20835Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23136Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 22603Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28275Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3003Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5046Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12976Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10646Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9772Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14388Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12851Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11308Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11383Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12463Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 11364Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 5815Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12040Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13841Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11388Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10774Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12513Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13151Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13082Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10928Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11707Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10814Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3414Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12702Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14375Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20177Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53659Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 50945Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54145Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50839Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54622Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45600Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 76102Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5430Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9579Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12247Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15666Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24849Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 42433Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33145Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42983Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56193Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48368Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51446Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 47952Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9592Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16228Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16631Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16387Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16806Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15722Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14407Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15066Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12801Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21597Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 39470Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12104Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42933Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70948Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54980Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 67987Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71738Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 79453Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66664Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 83889Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59445Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 65698Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16880Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16505Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53580Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58325Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58949Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53377Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 51524Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71857Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 69163Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70549Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 62633Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45954Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45954Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1453Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29458Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 83872Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 100803Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71809Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84413Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 80318Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 105894Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 166027Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 153010Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 85971Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 731Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18011Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18580Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17353Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18132Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18500Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19938Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19708Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18498Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19232Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19443Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 5938Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18128Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19710Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18960Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18729Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19187Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19672Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19540Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18794Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19469Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16804Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10107Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19150Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19561Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18574Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17179Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19347Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19170Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18605Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54372Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 121211Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15810Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19139Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19331Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 37201Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 85046Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78325Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82302Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 79224Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 84136Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18117Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 113Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18463Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19095Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19312Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18615Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20102Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20089Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19767Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20158Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21008Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 588Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16166Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17806Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19358Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19590Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20258Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19867Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19033Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50976Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75188Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59224Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10484Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19104Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19140Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18375Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12679Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12554Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13149Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18513Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20865Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20709Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12853Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 10930Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11789Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13386Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14197Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13599Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12600Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11751Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10377Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9999Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 619Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1038Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18168Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19500Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19175Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19694Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19525Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44946Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78065Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 81517Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 85580Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 97981Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6434Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18470Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17333Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17792Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20185Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19481Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19544Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19344Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18493Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18538Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14614Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9933Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18066Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43947Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 116514Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 131470Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 142835Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 146837Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 153023Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 153083Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 153329Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 126733Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18992Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 114352Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 280606Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 274563Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 278019Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 289327Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 290349Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 269909Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 262754Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 285829Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 262565Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 5707Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19077Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18125Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28005Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72123Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 110292Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 132939Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 139262Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 115534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 104276Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 83101Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 13327Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 101005Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 206144Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 220943Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 275214Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 221805Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 282246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 274932Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 225311Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 248500Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 281416Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4399Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20331Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20179Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20041Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19697Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19824Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18916Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19629Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20001Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 26330Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 121655Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11776Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16686Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 29899Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 137191Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 287058Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 255879Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 260647Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 228509Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 253527Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 188887Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9721Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72197Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 196732Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 271818Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 250572Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 232525Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 252679Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 257720Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 254663Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 258913Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9924Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9924Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5037Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 76610Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 272168Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 283363Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 291454Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 243519Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 241602Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 236367Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 254105Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 251686Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 27394Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 333Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18735Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18258Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19453Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18793Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18555Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18528Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18511Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18730Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18895Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18955Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6349Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17811Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17251Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17350Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17444Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17398Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17116Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17861Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18366Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18086Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15666Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8176Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16598Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18708Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13405Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21942Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75540Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 83153Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 242279Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 290375Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 313836Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 302987Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10121Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 45507Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63758Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66658Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 139176Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 222310Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 287216Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 248886Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 299078Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 189557Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10069Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51063Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56358Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 58043Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58892Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 146128Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 159180Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 171336Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 183339Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 126705Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13436Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18393Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15597Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17370Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17429Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18097Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18394Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25246Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 75218Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 31154Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17796Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18028Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 62969Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 73025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 76239Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74974Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 74093Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74716Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70424Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8299Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5164Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 55117Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 65532Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 200308Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 216155Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 94451Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 81765Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 84608Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89354Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 99182Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 92693Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 13760Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 121116Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 209761Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 248954Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 217136Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 273734Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 247214Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 250312Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 271679Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 203053Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 6327Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18624Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18928Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18747Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19008Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19887Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19260Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20409Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19517Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19573Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16689Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6695Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18400Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18132Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19108Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19692Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19577Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19473Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19983Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19860Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 126970Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 24570Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 132044Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 244782Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 298476Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 231334Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 240520Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 266135Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 244006Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 251622Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 230463Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 222354Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9624Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 77109Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 108344Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 106316Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 109176Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 104733Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 99376Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 113123Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 102702Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 111545Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 96902Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16037Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89577Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 120178Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 132166Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 121076Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 131168Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 130439Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 126300Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 147504Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 251594Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 165660Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 6633Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18269Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49634Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 105575Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 102821Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 102756Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 100209Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 95097Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 101487Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 116239Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 99918Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18570Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19526Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18834Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19030Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20505Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43249Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 94769Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 87377Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 45956Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1526Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18438Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25023Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 87747Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 195257Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 263631Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 247310Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 250396Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 247799Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 246883Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 237750Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 74477Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1018Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17057Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17869Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18869Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19575Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 68284Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74817Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 102368Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 232638Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 242293Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 225281Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 225281Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18503Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17778Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17840Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 61059Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 214074Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 252897Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 279661Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 229671Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 272699Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 98502Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 98502Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3764Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60998Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 218167Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 254963Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 248048Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 222094Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 253527Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 217721Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 180943Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 208911Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 33495Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 114Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18140Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18640Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22968Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 109663Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 223800Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 217410Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 243113Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 239490Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 231936Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 77382Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 77382Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17661Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20145Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19130Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19946Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19354Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19137Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18728Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19346Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19914Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 4876Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 333Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16770Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18405Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14963Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15986Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17247Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18618Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16012Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15438Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17959Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17227Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6369Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16120Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14857Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16255Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17944Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18386Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18624Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18143Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17360Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16775Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 559Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10319Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18070Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28020Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66440Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 69018Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66167Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66518Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 50083Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43092Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 39209Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14254Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17236Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17048Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14874Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13230Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13689Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16210Kbit/s delay 72ms
sleep 1s

ipfw -q flush
ipfw -q pipe flush