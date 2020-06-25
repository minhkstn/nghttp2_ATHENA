#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

ipfw pipe 3 config bw 8183Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17765Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 56367Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 111665Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 108687Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 108466Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 105553Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 84461Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 68214Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 72586Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 57117Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16533Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 22433Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21357Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20815Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21725Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20543Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 21326Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21238Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21265Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 4167Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 4167Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 20679Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21212Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21762Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21935Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22945Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 22874Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20948Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19121Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22289Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21667Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 6060Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15471Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15469Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16515Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17305Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 14380Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16803Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 11362Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16010Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16733Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 13214Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 10156Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21749Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22890Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21894Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 100073Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 132717Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 131584Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 140030Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 129080Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 88489Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 105914Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17499Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22342Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22445Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20815Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19469Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19716Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21282Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17803Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21540Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20337Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 11361Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 11495Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21629Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19706Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20407Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16531Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18909Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18839Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20115Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19611Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18448Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 10366Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 10366Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16423Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20383Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19590Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19456Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 20056Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21148Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20119Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22357Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19494Kbit/s delay 36ms
sleep 4s

ipfw pipe 3 config bw 2388Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15960Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20383Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19099Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18341Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19022Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19020Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19880Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17623Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20155Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19034Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 6728Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18622Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19674Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18346Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19449Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19437Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19124Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19987Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18600Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 73663Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 119882Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 9744Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20440Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21166Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21003Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19670Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21319Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20035Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19329Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18964Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20665Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17141Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 10682Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 23512Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20814Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19238Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 35366Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 58321Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 60946Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 65288Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 67692Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 69977Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 46923Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 11192Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16485Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 13856Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15101Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 15671Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 13884Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 44359Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 55541Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 57633Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 62194Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 56496Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 13163Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18792Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19452Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19043Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18509Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19052Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18180Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18873Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18630Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17802Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 6984Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 17989Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21644Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21371Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 25803Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 123056Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 145263Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 142149Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 133394Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 125923Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 119638Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 52960Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 52960Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17678Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18426Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21241Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20554Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19973Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 119143Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 175936Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 151240Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 121454Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 117744Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 4177Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19225Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19097Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 87129Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 109441Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 176991Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 129623Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 186636Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 268684Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 225826Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 180123Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 3994Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 5041Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17674Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16078Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18428Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17849Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17162Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21525Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 65556Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 64731Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 64981Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 59083Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 9720Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18033Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18085Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 43823Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 98998Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 98222Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 98138Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 118931Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 174975Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 240304Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 186818Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 11273Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 13161Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19335Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18380Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16472Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17329Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19424Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 85660Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 160816Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 156885Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 199592Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 132392Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 13423Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17767Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16040Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17641Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18019Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16893Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17303Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 27432Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 66659Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 64873Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 25834Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 16133Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 161373Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 184801Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 203450Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 210214Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 249795Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 255681Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 222891Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 103216Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16639Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 21392Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21605Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21606Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21472Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 58538Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 140480Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 171574Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 275316Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 130657Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 13776Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 42384Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 63353Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 62106Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 110566Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 165854Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 213566Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 261778Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 276262Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 143691Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 14811Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 41595Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 157599Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 188414Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 206650Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 247309Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 186933Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 77315Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 88819Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 61181Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 4230Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 35542Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 134880Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 196946Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 198934Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 249814Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 162103Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 183834Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 194621Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 158626Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 112580Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 112580Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 183595Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 219010Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 244449Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 241529Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 231018Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 224563Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 201081Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 266042Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 206348Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 274732Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 151586Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 15660Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18424Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17782Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19298Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19204Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17938Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20227Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19856Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18358Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 9907Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 9685Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17080Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17905Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17795Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17168Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18165Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17180Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 35488Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 119601Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 121434Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 121434Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 138642Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 11308Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 51787Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 113859Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 107040Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 118162Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 109960Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 108244Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 107952Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 102647Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 110234Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 81441Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 13715Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 103402Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 108229Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 181011Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 168196Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 183866Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 142088Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 162783Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 129217Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 168135Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 129269Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 5683Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14467Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17325Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17813Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17266Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17543Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16170Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16774Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17428Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17383Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 4792Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 4792Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16404Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17384Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 15594Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18166Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16946Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17589Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 28712Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 65101Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 62820Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 69348Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 2877Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 4824Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18043Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17449Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19171Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19239Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18873Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18209Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17755Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18187Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19071Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16392Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 7544Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16701Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17257Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15561Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16559Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17268Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16594Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16652Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16712Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 11462Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16293Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 21741Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 23415Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21989Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19893Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21206Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18708Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19576Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19533Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 12716Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 12716Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17618Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16249Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16035Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16742Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16342Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16662Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16931Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16390Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16452Kbit/s delay 36ms
sleep 4s

ipfw pipe 3 config bw 3940Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16216Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17035Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16503Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16017Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16388Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17204Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17402Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16856Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17045Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 9036Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 68027Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 79397Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 65886Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 64254Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 82213Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 83431Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 102634Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 89416Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 109171Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 100483Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 5212Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 5212Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 12025Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18567Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18262Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17609Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18387Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 77846Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 77740Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 74165Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 54268Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 85176Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 80785Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 14339Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16835Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 28136Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 73648Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 78639Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 39194Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 74776Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 83759Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 91953Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 91078Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 51573Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 51573Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 3461Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16772Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 36766Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 82748Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 76331Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 71863Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 57146Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 68033Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 71384Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 73323Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 64701Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 64701Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 39803Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 60054Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 43158Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 42083Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 46575Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 63094Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 61471Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 77108Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 63769Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 47836Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 47836Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 2559Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 23459Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 54368Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 50348Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 59244Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 48972Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 79967Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 70971Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 74030Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 82556Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 5356Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 5356Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 3503Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17590Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 38777Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 48791Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 54173Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 52703Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 57336Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 60280Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 61382Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 51111Kbit/s delay 36ms
sleep 1s

ipfw -q flush
ipfw -q pipe flush