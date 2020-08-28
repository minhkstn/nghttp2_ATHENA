#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 udp from any to me
ipfw add pipe 3 udp from me to any

ipfw pipe 3 config bw 6198Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 3376Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5206Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14607Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11938Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14205Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15122Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 21587Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15154Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14103Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16752Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14651Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 3728Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 18772Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12262Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15545Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13408Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9378Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11188Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10195Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8880Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6256Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8816Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 3870Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 6904Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4205Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 2020Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 2783Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8134Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10238Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8266Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9292Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6881Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6501Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 8223Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9940Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4951Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4227Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11614Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8904Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8348Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16074Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15494Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8108Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4980Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 13650Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10094Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8622Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6659Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8815Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 9798Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8537Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6173Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4342Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 4107Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4107Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7366Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9771Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10349Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11095Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14690Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 11519Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11443Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9761Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13255Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13255Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 1995Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 2883Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8038Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15994Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 17259Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16612Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 17452Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 17310Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 17330Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15476Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8723Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3212Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 4036Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 17631Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16624Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10693Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7846Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5912Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3592Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4320Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 2367Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3879Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5766Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10312Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 22079Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16346Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5705Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 3716Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3656Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3500Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5091Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10807Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 7434Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8898Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3720Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7997Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7473Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12762Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13441Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15083Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5363Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5697Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 3546Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 1097Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14772Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12186Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10567Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11272Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 17452Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 17241Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10051Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11414Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 6099Kbit/s delay 87ms
sleep 4s

ipfw pipe 3 config bw 7935Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5238Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4503Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6482Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8419Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8174Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8829Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8825Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8804Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7120Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 5764Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 1782Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16170Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7153Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9172Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8271Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8271Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4264Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5389Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4052Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5989Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6982Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 9170Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8194Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5962Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6919Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6998Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5281Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6504Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7395Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7885Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7307Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5141Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 9565Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8300Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8712Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11522Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 9777Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10868Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11120Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9172Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9143Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13852Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3168Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3168Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 3044Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6145Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5440Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5539Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 9578Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6909Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 2509Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5079Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5580Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5471Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 2929Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6919Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8554Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8930Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7706Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5959Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10152Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9136Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7549Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6890Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7623Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 6307Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14202Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12072Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12404Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10689Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9759Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3777Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9386Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13738Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14358Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4822Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14332Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13205Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11947Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 19854Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15379Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13858Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13062Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11658Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 15108Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5427Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5427Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12826Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9948Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8838Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9839Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6503Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7221Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8935Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 9337Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4865Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 3041Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10587Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7889Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7567Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7279Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7609Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9331Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8188Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8729Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9834Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5410Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4206Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4206Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12970Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15445Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 21340Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 29501Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 26287Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8695Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 4771Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7849Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8676Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13641Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9163Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 15944Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11199Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8436Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11383Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 12704Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 19706Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16970Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10330Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11626Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11898Kbit/s delay 87ms
sleep 4s

ipfw pipe 3 config bw 12257Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10290Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15207Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12147Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14864Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13757Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13646Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10979Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14157Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 21012Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 4578Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14926Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 18630Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16309Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 23107Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 26453Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 22352Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6106Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9640Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 12223Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7913Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6634Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9034Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 11955Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10581Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8087Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10804Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12054Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 13643Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9139Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5758Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5758Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16208Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 15421Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9383Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9962Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9214Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7516Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8919Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5672Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7882Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 2000Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5959Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4290Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6992Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8765Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7404Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9386Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8807Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5254Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9029Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8348Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 6200Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11112Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 17257Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9559Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15834Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 13982Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14144Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11780Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13347Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6918Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4923Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 11691Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12663Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11499Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9611Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 4312Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3761Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3986Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7996Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4617Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6396Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 2371Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 9294Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14648Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15556Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12320Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14038Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14032Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11548Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11914Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8907Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8899Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 4264Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13799Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6306Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5075Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7568Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6866Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8445Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10825Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9378Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 7923Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10260Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9486Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8745Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10415Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8229Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9716Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9150Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 12255Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 5054Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 4033Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10055Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10397Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 13503Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14809Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13904Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6324Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11159Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14789Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7023Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 1116Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 1706Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 15981Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9176Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7389Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8329Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10341Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11925Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10105Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8952Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9873Kbit/s delay 87ms
sleep 4s

ipfw pipe 3 config bw 2240Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9265Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8848Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10883Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8549Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7276Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10582Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 16483Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8807Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9883Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7440Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 9876Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5861Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7184Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5906Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10037Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8077Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6823Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8814Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9451Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9066Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 3247Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3247Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14944Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13020Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5694Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8399Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11244Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13287Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10407Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7890Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11533Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14777Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 6146Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14635Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11019Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5749Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 9552Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9988Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9304Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14586Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9794Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 6905Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 3407Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7184Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3394Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7274Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3816Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 6168Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8236Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5021Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7561Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7961Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 4433Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 2498Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 8645Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9243Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10475Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8406Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4813Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 6419Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5621Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 3806Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 3806Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 10837Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8733Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9514Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10710Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8050Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10897Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 14493Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7669Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11691Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 3646Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 21123Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 21751Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10324Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11145Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10007Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 4189Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7508Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8449Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13514Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11190Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 5712Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9084Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7260Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9551Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8747Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 15234Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 18486Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9728Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8875Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10622Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11070Kbit/s delay 87ms
sleep 3s

ipfw pipe 3 config bw 8829Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 11480Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10336Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7977Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10820Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 9562Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 8446Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5824Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7642Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 7975Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 2997Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 15716Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 10076Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 5994Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 2853Kbit/s delay 87ms
sleep 2s

ipfw pipe 3 config bw 7963Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 9071Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 13553Kbit/s delay 87ms
sleep 1s

ipfw pipe 3 config bw 14313Kbit/s delay 87ms
sleep 1s

ipfw -q flush
ipfw -q pipe flush