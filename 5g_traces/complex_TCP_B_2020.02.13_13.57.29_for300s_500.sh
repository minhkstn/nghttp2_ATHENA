#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

ipfw pipe 3 config bw 18137Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17601Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19716Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 81021Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 167231Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 185890Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 178924Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 121363Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15584Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 29667Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64165Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64900Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63717Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 61400Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57892Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 65071Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 108085Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 44316Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 25313Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 124009Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 158344Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 158645Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 153667Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 159035Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 150893Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 156523Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 147537Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 61068Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 61068Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18447Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18642Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19883Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19773Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41374Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82094Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78717Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 69121Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 81119Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 38315Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 739Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18460Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18442Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18976Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18613Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19621Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70190Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 112821Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 90303Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 147999Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16417Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5205Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18800Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18560Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18378Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17544Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28241Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74774Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 65008Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74531Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 61735Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 5204Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16884Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17854Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18397Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16290Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18578Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18487Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18391Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18715Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20349Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14472Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11110Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15416Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15977Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15031Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45731Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70879Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 65183Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58880Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 64760Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 62908Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11776Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19375Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17761Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18439Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17024Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15907Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17302Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17756Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18358Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10301Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14306Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15235Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15286Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14859Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14303Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13367Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14901Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12185Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16350Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 7940Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10626Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13083Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10979Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11601Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14613Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28817Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29553Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25223Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31710Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 30852Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17034Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29395Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43835Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50976Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 50063Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51712Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 39524Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42362Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45660Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33797Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19989Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9960Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11688Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12662Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10293Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11484Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11410Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8948Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12639Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10152Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11997Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7081Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9612Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12682Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12402Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11383Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12087Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12623Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12531Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12733Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22424Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22769Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10251Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 9622Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8501Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7646Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9035Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16657Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15107Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18886Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14817Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13393Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18914Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10615Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 5572Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8452Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7606Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8723Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9232Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6135Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6305Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7880Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8751Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8129Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3927Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 5968Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5036Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13138Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16142Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28312Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26841Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23495Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18719Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 44993Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44993Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22627Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 43378Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 36527Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40689Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41793Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40158Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38482Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 25791Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29860Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 56783Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56783Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11243Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15012Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14663Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15659Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14862Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16673Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14805Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15363Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15622Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 1807Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1655Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12338Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13901Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10958Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11873Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11446Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15761Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13692Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13900Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11122Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4598Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16044Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8644Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10423Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9981Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35902Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46730Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 48577Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66826Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50247Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63208Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7530Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15599Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11918Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15323Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15795Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17291Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14236Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15464Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13291Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11869Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9638Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8789Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15549Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13884Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13920Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14460Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16137Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41854Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 43203Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30743Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 41316Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12622Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11305Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12316Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 36953Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32349Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30297Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32950Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 40895Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33307Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19187Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7863Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13988Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13123Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11151Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9457Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12032Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12488Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12468Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46262Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 28546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 158Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14399Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14709Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25796Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42451Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44649Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41527Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50065Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 49442Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58091Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8792Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1017Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12219Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14315Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14057Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14256Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15006Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20998Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37541Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 36853Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 35976Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10267Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1808Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14962Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15460Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15478Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15631Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15172Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13483Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13566Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13642Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13280Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 591Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1934Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7995Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7487Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11347Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7768Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12054Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6896Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9055Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7323Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8609Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2278Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3963Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9860Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9615Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12171Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23051Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42448Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35683Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44752Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35329Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 26848Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2459Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3872Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8965Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9841Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13413Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12366Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11905Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11903Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13652Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11311Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10719Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4468Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11868Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9005Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11831Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18592Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 26478Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22080Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19135Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16495Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26604Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34214Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 2907Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7233Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7947Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8709Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12977Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14171Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20624Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19282Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33453Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38836Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26978Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 3326Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6752Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4887Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10063Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10332Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7434Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8608Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11671Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16708Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16146Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11156Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 730Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3412Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4763Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10000Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10098Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11917Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9564Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15189Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11929Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23147Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2122Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4592Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14929Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14994Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16999Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22436Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15680Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18246Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23822Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17016Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19759Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16602Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3442Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8535Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7744Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7190Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5465Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3532Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7575Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10989Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11768Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3130Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 460Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1554Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2326Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1861Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2027Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1184Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1840Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1687Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3305Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8065Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 9254Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6446Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1307Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 812Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3803Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 1978Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4383Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5610Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7865Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3903Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3746Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 277Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 941Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1135Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 458Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 941Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 600Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 510Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 490Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 793Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 401Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 466Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1808Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 531Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 656Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 753Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 368Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 370Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 656Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 578Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1505Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1970Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 920Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1685Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 1721Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 268Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 117Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 279Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 290Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 148Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 111Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 324Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 134Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 67Kbit/s delay 72ms
sleep 5s

ipfw pipe 3 config bw 34Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 2079Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10486Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18363Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18466Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17271Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16362Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16176Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18477Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17783Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18365Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5954Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5954Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16942Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15578Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15285Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16206Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16154Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15660Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19157Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15937Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18092Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16904Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3398Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15654Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16985Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16970Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16734Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42790Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 122914Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 192335Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 195530Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 191965Kbit/s delay 72ms
sleep 2s

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

ipfw -q flush
ipfw -q pipe flush