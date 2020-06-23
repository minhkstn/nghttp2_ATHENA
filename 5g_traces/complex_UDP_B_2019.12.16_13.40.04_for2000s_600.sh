#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 udp from any to me
ipfw add pipe 3 udp from me to any

ipfw pipe 3 config bw 22245Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24083Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 22535Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22793Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 130481Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 142441Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 178682Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 140758Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 164281Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 123674Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 126554Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 24648Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 153154Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 156672Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 139267Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 130492Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 141364Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 131200Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 145375Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 145220Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 145030Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 28972Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 772Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 154921Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 178425Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 191619Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 200768Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 147851Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 145593Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 153671Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 166998Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 168940Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 160558Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 124687Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 44391Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 200910Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 230524Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 216553Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 202221Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 192612Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 223292Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 205049Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 216263Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 206101Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 58202Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 252Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26606Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26777Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26000Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 25017Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26713Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 104707Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 186188Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 222446Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 228073Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 229565Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 251095Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 7012Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 5195Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 72266Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 216869Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 233890Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 195173Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 227857Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 179698Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 242741Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 212631Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 207496Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 129600Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 21399Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 172773Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 270399Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 155975Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 252150Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 258326Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 250908Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 236238Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 230572Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 261877Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 104200Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 50832Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 194037Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 229072Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 198872Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 216330Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 187942Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 242831Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 203156Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 186352Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 194371Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 21377Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 21377Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 206980Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 162270Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 198804Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 178065Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 177822Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 196640Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 205723Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 193826Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 165743Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 200255Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 199880Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 5916Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 19189Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19356Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20138Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47784Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 199570Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 170018Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 176798Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 224159Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 163320Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 62805Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15910Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18716Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 68893Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 197139Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 188291Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 209196Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 247336Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 150439Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 178027Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 160552Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 187665Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 6473Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 114600Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 223735Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 157737Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 186943Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 136027Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 150874Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 141571Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 181076Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 150219Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 156482Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 51873Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 14869Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20347Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30994Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 81487Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 82034Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 64476Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 80159Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 79162Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 80641Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71327Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 109286Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 11040Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 54182Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 123348Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 90083Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 81368Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 87486Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 88451Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 88202Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 87387Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 85656Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 29373Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 56852Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 94113Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 105462Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 100139Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 97341Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 83673Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 73065Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 75283Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 78848Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 86269Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 10627Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15507Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 51185Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 80136Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 77513Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 71326Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 73591Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 88094Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67871Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 80717Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 88837Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19171Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 2318Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15625Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14769Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35947Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71399Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52656Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67645Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 78558Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 77565Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71280Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 49198Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 21526Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 45202Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48338Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42510Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44233Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 51358Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 49494Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40608Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42044Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35950Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38255Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 5706Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 4502Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12662Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31575Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 44731Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39410Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 46879Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42391Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49846Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41499Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 54323Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49465Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14559Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 13618Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13878Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13184Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13310Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19231Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39320Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 59374Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61004Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 54678Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49582Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43142Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 4572Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 8902Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13985Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13323Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13666Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 13726Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13774Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11703Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12207Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12473Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 5043Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 5043Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11699Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 12684Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12702Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14104Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14447Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13406Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11983Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13797Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14625Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 13479Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 6009Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17633Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17141Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17464Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17001Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16129Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 17753Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53355Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 54222Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 60356Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 26592Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 555Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16204Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15290Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 16467Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15947Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15942Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17736Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17477Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18578Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14250Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16783Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 11785Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 7228Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16855Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17305Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16437Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17008Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15662Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15635Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15925Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 45092Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53313Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 18174Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1954Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16856Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16688Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16804Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15760Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18625Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 51804Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 59668Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67672Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47574Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70157Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44330Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 9948Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14849Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15194Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16600Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16146Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27509Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71250Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 74527Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 72880Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 78961Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 19932Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 2385Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13227Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15121Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15420Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29359Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 43828Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47332Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49352Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 51360Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52491Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39189Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17953Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 10505Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14713Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 16778Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14718Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15394Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15848Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13864Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15921Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15334Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15331Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 9963Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 4289Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36792Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 45122Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36258Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30977Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38816Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 21147Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40042Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33397Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43081Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 25025Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10704Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15543Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14413Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14300Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27009Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37154Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48053Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70341Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53205Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 66550Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55723Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 4871Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14047Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14586Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14651Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13043Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14972Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13622Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15003Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15256Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15478Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 4560Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 12906Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12763Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11940Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11207Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17286Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 27144Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39704Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53162Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39708Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38164Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 25920Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 2742Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26812Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 29932Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 34294Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24840Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 32022Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35979Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27730Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31222Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 25624Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24747Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 10053Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 11351Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10949Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 8266Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20936Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30093Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28969Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 35082Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35760Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27844Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44870Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40117Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 5798Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14525Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38206Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 43748Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18544Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26102Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 25752Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 7446Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 111Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 55Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 22Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 100Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 221Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 446Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 189Kbit/s delay 90ms
sleep 6s

ipfw pipe 3 config bw 114Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 616Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 1702Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 3283Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 7430Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10088Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 9554Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14375Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13682Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 9026Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 9557Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 6116Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 353Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11Kbit/s delay 90ms
sleep 8s

ipfw pipe 3 config bw 279Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 412Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 168Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 168Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 1396Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 580Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 167Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 11Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55Kbit/s delay 90ms
sleep 9s

ipfw pipe 3 config bw 34Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 211Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 581Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1373Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 66Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 380Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 618Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 111Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 145Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1235Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 145Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 133Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 122Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 22Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 46Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 34Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 27Kbit/s delay 90ms
sleep 6s

ipfw pipe 3 config bw 7082Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 114Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 3336Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 3437Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1446Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 11Kbit/s delay 90ms
sleep 6s

ipfw pipe 3 config bw 336Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1732Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 1319Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 166Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 78Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 268Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 445Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 167Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 234Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 535Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 22Kbit/s delay 90ms
sleep 2s

ipfw -q flush
ipfw -q pipe flush