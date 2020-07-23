#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 udp from any to me
ipfw add pipe 3 udp from me to any

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

ipfw pipe 3 config bw 39771Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14796Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 3404Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 12317Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 13077Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 10297Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 24240Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 37669Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 40615Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 45634Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 35107Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 27330Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 46902Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 1793Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 2442Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 12784Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17747Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 23191Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 36367Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 42642Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 39855Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 33525Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 30934Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 40399Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 43973Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 9296Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 2249Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 32376Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 124999Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 233089Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 266316Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 211055Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 251042Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 209954Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 166336Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 113784Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 117427Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 5736Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 11836Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 178634Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 236168Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 241605Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 250376Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 217816Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 214567Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 181097Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 198867Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 186625Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 103836Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 3541Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17401Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18940Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19534Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18181Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17536Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18119Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18044Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18189Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18901Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19166Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 5404Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18419Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 39781Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 116297Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 105304Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 118802Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 107985Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 179123Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 220859Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 206444Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 193335Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 6963Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 9985Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19789Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19565Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19294Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20844Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20482Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 31194Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 43005Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 46932Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 51948Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 22131Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18558Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18693Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18502Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18820Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18179Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 25244Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 37261Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 43155Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 49192Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 30956Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 7529Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 36222Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 105286Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 203371Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 257088Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 216644Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 222251Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 180415Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 261670Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 244627Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 16338Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 2065Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 53366Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 139487Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 157140Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 187775Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 247843Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 285890Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 291248Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 272181Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 270056Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 55068Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 75367Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 187474Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 199397Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 241119Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 268022Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 301270Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 307302Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 258077Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 255322Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 263933Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 12010Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16166Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19497Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 50070Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 143411Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 156111Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 169417Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 103216Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 85285Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 89077Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 56695Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 25614Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 99896Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 105671Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 107959Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 114815Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 159141Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 201701Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 172907Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 222631Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 218903Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 113005Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 67412Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 227211Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 243034Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 263877Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 281700Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 252861Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 248353Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 203935Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 270812Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 221993Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 221660Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 8496Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17584Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18191Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18964Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18622Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18332Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17714Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18222Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19156Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 83660Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 97582Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 12829Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18534Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18943Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19399Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18488Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18366Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19193Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19805Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19215Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 10624Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 21503Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 22156Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22236Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19934Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19719Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21165Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 20757Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20455Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21860Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 9764Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 9764Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 10553Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19970Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20495Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21914Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22363Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19280Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 21967Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22275Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 23459Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21740Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21704Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 8583Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21570Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21409Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 23203Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19547Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 20904Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20602Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 38697Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 118361Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 158701Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 124396Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 11427Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19164Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17592Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19549Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 65307Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 71535Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 77175Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 76846Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 73663Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 74595Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 45763Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18957Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22011Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21410Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18636Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19899Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 50232Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 96785Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 114595Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 221431Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 270848Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 79913Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 27731Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 106835Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 187827Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 214033Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 215833Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 178325Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 210552Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 245930Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 220321Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 235489Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 73010Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 113816Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 162471Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 107202Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 127589Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 159808Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 122422Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 108050Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 104366Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 89324Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 70367Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 39270Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 91544Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 108512Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 93751Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 112534Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 146878Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 140377Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 129360Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 66474Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 96584Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 34295Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 113950Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 176005Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 133089Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 153688Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 133343Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 103134Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 116815Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 111695Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 55404Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16063Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16490Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17817Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16950Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16324Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15667Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15317Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15043Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 15648Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 10949Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 10949Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 3306Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14800Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14014Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16089Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14874Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15683Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14685Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14919Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 14613Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 1016Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15707Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 36299Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 33999Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 55442Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 47379Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 51793Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 56082Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 45278Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 49834Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 4683Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 1695Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15085Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 13745Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15220Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 13847Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14595Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 36046Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 42139Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 42894Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 30600Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 4900Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 1706Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16370Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 25544Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 26942Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 24385Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 38811Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 49150Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 53230Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 61480Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 64561Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 60590Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 21188Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 4072Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20177Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 28279Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 61619Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 65563Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 82859Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 130354Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 103032Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 122559Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 100115Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 95716Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 4513Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 4146Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17427Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18262Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17698Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18596Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19541Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18664Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17425Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18118Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16912Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 14299Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 10905Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16211Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16956Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16446Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 17095Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17780Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17846Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19506Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15411Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20049Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 10564Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 14346Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17275Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19120Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 49136Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 136400Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 143216Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 133371Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 135432Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 126165Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 56966Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 56966Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22539Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20799Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20614Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 23000Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22814Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20660Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 23335Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22744Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 22852Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 8634Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 1724Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18087Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 20108Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18985Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 19003Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 66064Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 85025Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 104958Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 100638Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 100968Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 105658Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 11292Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 5767Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 28780Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 49939Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 49805Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 48815Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 99540Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 104128Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 99857Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 99003Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 66529Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 32610Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 65034Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 61401Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 75823Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 76205Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 66430Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 73550Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 66600Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 60813Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 48533Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 12461Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16337Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 22931Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 69579Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 92845Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 85232Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 78856Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 68849Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 78423Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 63864Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 16119Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15955Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15414Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 15451Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15534Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17797Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16095Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 14810Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 15437Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 15129Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 11157Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 11157Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18599Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19170Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19269Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 18394Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16795Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 17311Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18660Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 19901Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18171Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 11932Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 11932Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16366Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 46673Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 72729Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 60565Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 58442Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 82903Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 45390Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 58480Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 85514Kbit/s delay 36ms
sleep 3s

ipfw pipe 3 config bw 67636Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 4051Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 16725Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 18042Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 30986Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 43897Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 28429Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 47852Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 64496Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 62303Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 49425Kbit/s delay 36ms
sleep 2s

ipfw pipe 3 config bw 65386Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 2581Kbit/s delay 36ms
sleep 1s

ipfw pipe 3 config bw 3380Kbit/s delay 36ms
sleep 1s

ipfw -q flush
ipfw -q pipe flush