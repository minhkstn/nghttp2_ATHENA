#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

ipfw pipe 3 config bw 178035Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 190264Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 79010Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 21940Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22254Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40424Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 153318Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 159331Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 157899Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 162756Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 163776Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 279678Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 222253Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 6997Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29871Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31879Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31015Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 159040Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 202205Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 203437Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 211206Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 211928Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 221852Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 67874Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 24320Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 23853Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23720Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23809Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24167Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24070Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24169Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 25306Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 24158Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14472Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 13003Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18164Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19216Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 19411Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20959Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20041Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20272Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19590Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19688Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19764Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17822Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 11375Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23488Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23311Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22777Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43375Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 201641Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 187045Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 249825Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 184298Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 217767Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 76668Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 75742Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 200481Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 240129Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 207151Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 176410Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 220823Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 185093Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 181087Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 242904Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 192304Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 18710Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1659Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 69159Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 95710Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 127324Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 205049Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 239899Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 199522Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 198034Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 223592Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 205168Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 196022Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 158842Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 5720Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16634Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 24371Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 102998Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 138310Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 136903Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 130888Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 136678Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 135461Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 141124Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 128640Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 33392Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 332Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40358Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 94218Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 164064Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 220637Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 146887Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 238993Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 189829Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 177026Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 202205Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 225289Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 175128Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 7602Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28822Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29825Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 135517Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 245180Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 222824Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 217517Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 228286Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 184372Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 247854Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 166518Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 8680Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19635Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19815Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33258Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 125987Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 194558Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 203981Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 198330Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 228337Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 159083Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 43967Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 18568Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20114Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 19847Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19972Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 20097Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19289Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18770Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19959Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19418Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 48696Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 48879Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 89494Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 196196Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 225998Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 162357Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 152976Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 98423Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 133248Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 161150Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 143420Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 6615Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 3796Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37196Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43201Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 33109Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 56985Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61606Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 66879Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71811Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 75745Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 75754Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 59636Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 48338Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15373Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33920Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36561Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 59887Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70320Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61277Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71525Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 74901Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40669Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44096Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55666Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11774Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12302Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 46570Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 60963Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 57620Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 54677Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 71928Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 66695Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 66251Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 86462Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55914Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 85887Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38639Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 15478Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15519Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17193Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29022Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55587Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28581Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 32992Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26889Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 17151Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 33157Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 5991Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13035Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13176Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15011Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 24101Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 32033Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44231Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35101Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36187Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30462Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 18587Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18587Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 10398Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14760Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16964Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36364Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36515Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41591Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 56566Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52747Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33809Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39961Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 26619Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 5854Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26180Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48367Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41735Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37277Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 50572Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58820Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 28607Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 46997Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49389Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 39552Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 113Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1114Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 4658Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 7709Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10187Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 9375Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13974Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17750Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23591Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28874Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 6519Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 8193Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 9668Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14613Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17703Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16208Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17974Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17692Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31920Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 63268Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70081Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 84951Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 19007Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 2293Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17432Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36959Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 50973Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 4136Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19877Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70689Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 50554Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53811Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 58658Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 35790Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37882Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 7652Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16952Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18520Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18223Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17454Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18269Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17206Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17862Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17265Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 16615Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 1904Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 1901Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17575Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17305Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17105Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17699Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17773Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 16883Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15844Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16963Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17455Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17530Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 8897Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 8502Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14775Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15538Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15176Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14785Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17362Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17084Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16801Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16609Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17004Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16913Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 1192Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 4399Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14684Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15166Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10939Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 9576Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14702Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15729Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14801Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14918Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17773Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 26365Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14631Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19997Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17931Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 17740Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17658Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18418Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16248Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17982Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 19307Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18439Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15237Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 4259Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 12524Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 16334Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14660Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 17434Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42150Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 70064Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53463Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 51425Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 51379Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 42964Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 13078Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 34808Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42630Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 54307Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 49911Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 49072Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 65954Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47257Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 54413Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52538Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 28208Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 3799Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 14661Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43543Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 37066Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43890Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 59552Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 45456Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 43095Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55706Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 64443Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 52777Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 25765Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 38353Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 50255Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 55433Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 52401Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48941Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 52028Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 53310Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47094Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 41513Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61960Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 5640Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 5323Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 15057Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 15163Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11735Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11926Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14120Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14087Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 14934Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10400Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10642Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11938Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 5387Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 12480Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13920Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 10285Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 11128Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13068Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 25998Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30579Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 50653Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36383Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 36667Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 32244Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 6650Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 6326Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 22736Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 18268Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 25066Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 32269Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 26700Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31226Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 32381Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 29883Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 39211Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 13623Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 13623Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 16897Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 28576Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40392Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 42713Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44906Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33066Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 30080Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 23952Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 11263Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 20820Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 2675Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 6184Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 221Kbit/s delay 90ms
sleep 4s

ipfw pipe 3 config bw 200Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 176Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 77Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 101Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 79Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 178Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 111Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 33Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 78Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 592Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 313Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 178Kbit/s delay 90ms
sleep 6s

ipfw pipe 3 config bw 89Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 78Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67Kbit/s delay 90ms
sleep 4s

ipfw pipe 3 config bw 67Kbit/s delay 90ms
sleep 4s

ipfw pipe 3 config bw 56Kbit/s delay 90ms
sleep 6s

ipfw pipe 3 config bw 67Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 212Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 167Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 145Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 45Kbit/s delay 90ms
sleep 5s

ipfw pipe 3 config bw 78Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 44Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 90ms
sleep 6s

ipfw pipe 3 config bw 312Kbit/s delay 90ms
sleep 8s

ipfw pipe 3 config bw 7207Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 56278Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 140267Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 61664Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 142654Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 116486Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 127791Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 90646Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 114474Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 82433Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47085Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 47085Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 28718Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 54392Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 68522Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 103965Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 93039Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 77133Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 64400Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 92898Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 102910Kbit/s delay 90ms
sleep 3s

ipfw pipe 3 config bw 66115Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 26732Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 82529Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 73488Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67048Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 67854Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 59416Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 60788Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 82045Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 40375Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 48435Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 16723Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 2731Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31131Kbit/s delay 90ms
sleep 2s

ipfw pipe 3 config bw 39259Kbit/s delay 90ms
sleep 1s

ipfw pipe 3 config bw 31150Kbit/s delay 90ms
sleep 1s

ipfw -q flush
ipfw -q pipe flush