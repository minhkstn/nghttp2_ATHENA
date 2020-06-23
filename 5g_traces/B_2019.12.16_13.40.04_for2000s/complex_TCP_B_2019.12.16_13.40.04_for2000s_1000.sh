#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

ipfw pipe 3 config bw 53713Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67392Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37520Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38179Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 28975Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48895Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 56765Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 80729Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 94136Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67411Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 64800Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70931Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 70431Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38365Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41687Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 6079Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 3176Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15020Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15979Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 8352Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 12506Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14466Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16646Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15131Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35933Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49396Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42066Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20306Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 10057Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15849Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16040Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15596Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15404Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14807Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14457Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16382Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15711Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15864Kbit/s delay 90ms
sleep 4s

ipfw pipe 3 config bw 3510Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15922Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14989Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15693Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14136Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14778Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15127Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16680Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14385Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15738Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 8042Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14432Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11160Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17124Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 21302Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 50229Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48674Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39692Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 57588Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30558Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37573Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 45128Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 3907Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26583Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70809Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42158Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67981Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61756Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67176Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61536Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 51413Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35262Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 37587Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 34849Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38345Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41507Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 59056Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44088Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40184Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37464Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40346Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53280Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38248Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40381Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1007Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10441Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 35205Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40237Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39414Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43662Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43171Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41480Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36521Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43928Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42343Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 38459Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38459Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22693Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26833Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27671Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36967Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28782Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 32206Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40519Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30154Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49858Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41943Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36783Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 2200Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 6891Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15527Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 26755Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36832Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38763Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37297Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30213Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 32546Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26918Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37337Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30220Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 17189Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 17537Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30302Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40162Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41867Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23449Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38067Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23849Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 18920Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18078Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 9224Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1790Kbit/s delay 90ms
sleep 10s

ipfw pipe 3 config bw 1907Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1966Kbit/s delay 90ms
sleep 5s

ipfw pipe 3 config bw 1233Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1376Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 2088Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 3805Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 2654Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 1178Kbit/s delay 90ms
sleep 6s

ipfw pipe 3 config bw 1020Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1544Kbit/s delay 90ms
sleep 5s

ipfw pipe 3 config bw 1766Kbit/s delay 90ms
sleep 4s

ipfw pipe 3 config bw 2265Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1189Kbit/s delay 90ms
sleep 19s

ipfw pipe 3 config bw 30445Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31222Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31220Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30126Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31585Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29140Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27309Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27196Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 166842Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 131962Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 17354Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 181850Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 235690Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 226146Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 208426Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 216540Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 196131Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 206923Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 165952Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 181854Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 55367Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 200952Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 230398Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 215276Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 196150Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 204424Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 213530Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 212106Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 214812Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 212630Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 202395Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 21537Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 5047Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 128098Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 241716Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 263811Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 217165Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 170196Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 186909Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 178412Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 163115Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 152861Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 165210Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 116756Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 47462Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 224512Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 222637Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 240491Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 172496Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 166084Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 174984Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 176408Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 178673Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 185736Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 174582Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 62328Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 211231Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 222617Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 180783Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 180441Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 192202Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 195201Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 188407Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 186622Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 203935Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 177714Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 182660Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 11851Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 136808Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 289813Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 192556Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 213145Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 247637Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 229045Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 204035Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 155761Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 114934Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 61104Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 32740Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61754Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67672Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 76213Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49677Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48029Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55219Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61246Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70055Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71692Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 52751Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 62605Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 179405Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 124228Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 117614Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 86938Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70561Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 80182Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 83737Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 88860Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 95423Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 22839Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1613Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29386Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29879Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 29811Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30271Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30943Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 69129Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 194548Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 195371Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 157664Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 95619Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 18095Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24164Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24440Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23538Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24194Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 24376Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24017Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23522Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24242Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24193Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19965Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14486Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 24999Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26424Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58682Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 171485Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 167750Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 156579Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 245863Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 209451Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 213364Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 33974Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33974Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17710Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20301Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20548Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70049Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 214398Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 197964Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 136174Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 181053Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 139204Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 143711Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 122565Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 9170Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 74331Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 96704Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 135537Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 152593Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 117520Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 105336Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 110283Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 107408Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 121586Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 51698Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 55540Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 87422Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 88523Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 82604Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 87301Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 87474Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 90496Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 82325Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 89992Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 91872Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 91236Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 9319Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 57854Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 78907Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 72008Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58268Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52733Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 57497Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 54255Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67137Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 63918Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 39702Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39702Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31183Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 59410Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 64156Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70585Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58742Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 51598Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67788Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 60084Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 65215Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 68373Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 67445Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 17180Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 46392Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 60980Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 59489Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 60126Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58202Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 50635Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 65403Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 50654Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 45607Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 23302Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1769Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31766Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43698Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 56519Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 79522Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 72241Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 72889Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67887Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 62614Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 64217Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58016Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37941Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 10027Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26893Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28557Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 25077Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27696Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 46892Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37753Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40405Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 54131Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48310Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 46923Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 31203Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 18566Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24354Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 75935Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67454Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58308Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43532Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 48461Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 69002Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 63105Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47621Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 34183Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 9793Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 5784Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26589Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37160Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 37887Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17960Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37108Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49485Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 66492Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 74768Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47764Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 23309Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23309Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 23192Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43091Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 57185Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 81684Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 86634Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 92335Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 77565Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 84245Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 90818Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 82729Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 13759Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42640Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38001Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43446Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40933Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 46009Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53105Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 46497Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47779Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 77550Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14098Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14098Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 31028Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61344Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 81476Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 79896Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 86260Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 79490Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 78949Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 68472Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 80028Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 48068Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 29302Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49488Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 77798Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 96594Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 101960Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 90260Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 87785Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 81713Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 69596Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 83505Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71218Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14809Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 55738Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 82726Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52678Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 57020Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 62081Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 62600Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 62792Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67871Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 86034Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 89664Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 33694Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 24019Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 32684Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53581Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 68583Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61606Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 51911Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49026Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 71273Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 72767Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 60279Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58898Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 19017Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33915Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35807Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 32585Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37604Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28769Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28646Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31891Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22318Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 27761Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37710Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12590Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12590Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 23446Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38004Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37528Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52092Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 50481Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 46055Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52961Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 51572Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48706Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 46551Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 8708Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 21207Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55172Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 70599Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41304Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29014Kbit/s delay 90ms
sleep 1s

ipfw -q flush
ipfw -q pipe flush