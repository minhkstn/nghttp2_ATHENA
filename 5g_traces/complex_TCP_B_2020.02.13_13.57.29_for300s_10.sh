#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

ipfw pipe 3 config bw 18564Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19919Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19550Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19274Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20202Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20202Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8835Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20629Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20301Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 67062Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 136669Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 201782Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 192869Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 176996Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 199923Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 216188Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 5190Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18086Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18724Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74510Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 93982Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 100156Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 98998Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 103488Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 118562Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 114812Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8167Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11121Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19245Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19983Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20423Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 22370Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30828Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38276Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45991Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49532Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 58464Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17890Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17890Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18455Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19092Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19695Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19148Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20413Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19683Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19478Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19617Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 4401Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18434Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19087Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18574Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17790Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17711Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19008Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18112Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18073Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17285Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14759Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6930Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15573Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15982Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19153Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18382Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18527Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19135Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18870Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19291Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18279Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15129Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13675Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18020Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18533Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18730Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18770Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19522Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19625Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18513Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6229Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6229Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12580Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15819Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18512Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17651Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28859Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 36548Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45152Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50473Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60506Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 2017Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4338Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19994Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20743Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20854Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18798Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19973Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20318Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19395Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20195Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20093Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15779Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9044Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19232Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19518Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17855Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19535Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84213Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 192400Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 205478Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 183967Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 154462Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 151395Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8828Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6465Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9396Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9942Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13019Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15700Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26831Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 95083Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 174924Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 177596Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 188056Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 93395Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13481Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16832Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34171Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70044Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 76592Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72156Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75632Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 168142Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 237175Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 241977Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 204210Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17191Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18093Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17932Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23271Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 77723Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 198439Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 226174Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 238132Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 300394Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 294954Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 96228Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 18026Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17222Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18205Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17228Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18394Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17858Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18638Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19338Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18667Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20138Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4328Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2664Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17884Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15993Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16954Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17790Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18411Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18153Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19565Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17931Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19282Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18017Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18017Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 5231Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17905Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17140Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19254Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17845Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19479Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18272Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56381Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75594Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 58431Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13151Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45727Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80523Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 74605Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75252Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78189Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74380Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 76184Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 73397Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 32066Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 31796Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 122763Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 129906Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 139416Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 136357Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 139639Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 165940Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 152605Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 203759Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 66437Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66437Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16439Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18725Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18908Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19833Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58202Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71567Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75586Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72626Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 152474Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 49087Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1164Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 39332Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43621Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 60559Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 188392Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 127999Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 224428Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 195377Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 216543Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 256422Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 24301Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3359Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47603Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 99344Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 152048Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 68091Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53768Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48219Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29673Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13545Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 26705Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3519Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18920Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16608Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17872Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17973Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18935Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18410Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19699Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19311Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 23564Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1715Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15295Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18837Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20900Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19281Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18981Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20088Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19845Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20497Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19704Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 5892Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5892Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23515Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 119703Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 220779Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 264256Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 264070Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 281125Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 294014Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 206508Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 176948Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 217331Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4684Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26716Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 81584Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 191689Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 143446Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 189055Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 261555Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 181510Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 253641Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 258724Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 244258Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 149641Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13985Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17881Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18038Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19507Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19217Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19430Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19501Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20042Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51730Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 109609Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 83691Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 157Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18333Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19070Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18414Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18234Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18630Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18084Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18076Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17730Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18350Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 5149Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19672Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19396Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19204Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19821Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20061Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19163Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20323Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20009Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17030Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8703Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19372Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72601Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 81190Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84380Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 76836Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 160590Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 237329Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 199521Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 130197Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11337Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19733Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19384Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20168Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20871Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19958Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19686Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20443Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20067Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8894Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8894Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18647Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19517Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20151Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19989Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20208Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19963Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19649Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 86214Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84541Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4485Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4485Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4215Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19356Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19594Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20232Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20330Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18739Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19128Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19726Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18410Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20049Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16978Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 10428Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16621Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17376Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18065Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17441Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18143Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17742Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17233Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17366Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16340Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8599Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 21855Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 87554Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 146605Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 187330Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 225971Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 255919Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 148746Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 122090Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 132162Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 130208Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 100536Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8064Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8064Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19846Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 104994Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 210133Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 239891Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 217357Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 255180Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 246823Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 221462Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 209751Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 225453Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 99775Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12668Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19791Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18454Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17716Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18022Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16844Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19189Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17963Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19495Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6696Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6696Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 741Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17068Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16989Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17080Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16358Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17040Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17908Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16890Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17665Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14779Kbit/s delay 72ms
sleep 4s

ipfw pipe 3 config bw 4780Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17326Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17507Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18584Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41316Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 148638Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 200426Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 197602Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 116999Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 197326Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3782Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8221Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16697Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17243Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16348Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18180Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17552Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17853Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17732Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17633Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23753Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 41569Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12425Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16641Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17194Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17404Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18193Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17043Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16323Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20597Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33498Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 30689Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30689Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14530Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13374Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13740Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14123Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14355Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14243Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17872Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18917Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19861Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 9568Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9873Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18061Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47747Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 63945Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64844Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64761Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70714Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66733Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 68418Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 82494Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 136341Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 5842Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17433Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16785Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18054Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16755Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17645Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18442Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19780Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18696Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11672Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9952Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17896Kbit/s delay 72ms
sleep 1s

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

ipfw -q flush
ipfw -q pipe flush