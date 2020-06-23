#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from any to me
ipfw add pipe 3 ip from me to any

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

ipfw pipe 3 config bw 14297Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16692Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10315Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 595Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11745Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13825Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13854Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13287Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14422Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23293Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37429Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46333Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 33972Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 30484Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16031Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26628Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35556Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 64014Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49925Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57112Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56678Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56817Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 55128Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 45672Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10101Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16457Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26648Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28831Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 28496Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34713Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32122Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26477Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33521Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32342Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 33589Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10358Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13206Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12973Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12742Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 10286Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11762Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11913Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9435Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23092Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21088Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19629Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 8782Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8329Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10253Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11392Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8789Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18545Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20699Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22098Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18317Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10899Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10899Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11282Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45971Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 43480Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47567Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 47686Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47857Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44234Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42919Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 35464Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35464Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2922Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16808Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19635Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53496Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48777Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 45231Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51868Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54871Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58597Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7974Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7974Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2683Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16545Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16725Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17493Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16090Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16734Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17264Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46920Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40628Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50736Kbit/s delay 72ms
sleep 5s

ipfw pipe 3 config bw 9429Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18683Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17513Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32927Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35959Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 54237Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49983Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40822Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44177Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53744Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 28606Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12073Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16270Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16040Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15116Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26781Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 49077Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82516Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 100617Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 74982Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71363Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 60213Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29709Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60157Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88551Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 69963Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 80168Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89843Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63216Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 61392Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66313Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80107Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 37546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1106Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25261Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37578Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32076Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46327Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 28174Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31458Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 39531Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42718Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 41327Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 3870Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2741Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15053Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15392Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14441Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15065Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13819Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14901Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14030Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 9067Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9067Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11298Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14904Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14933Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13735Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25504Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33361Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 45322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47363Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48219Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46530Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7743Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7743Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3328Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15011Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14791Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27464Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31206Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46824Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53178Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 49495Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44862Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46648Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13950Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13950Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3806Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11322Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14697Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14964Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13257Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13784Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23402Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 44593Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 48365Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31021Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38395Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8104Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4830Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13044Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30184Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37328Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27500Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30294Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22285Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18892Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20685Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27051Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34448Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2706Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11229Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8350Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12534Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10413Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8526Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7708Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11524Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16450Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24398Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30837Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2402Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 124Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11132Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13374Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11266Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11201Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28187Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 40794Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32764Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11923Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11259Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6353Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3432Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26117Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33145Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 42172Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44991Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47626Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35910Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 51267Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 65188Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 32982Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11314Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2302Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10736Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7889Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 14328Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11185Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5595Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11321Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30285Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30714Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23462Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27701Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3115Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 6339Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10825Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12010Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15491Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27035Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32825Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28941Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17887Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16112Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 37459Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2998Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7821Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4667Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8529Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7141Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9213Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9279Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9988Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17203Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22037Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 25984Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5018Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5822Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 8282Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11533Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11876Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 27007Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 38862Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 35890Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27562Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26075Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7794Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2586Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 1123Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 684Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 300Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 566Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 277Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 1018Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 557Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 657Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 734Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 521Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 421Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 446Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1021Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 555Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 702Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 702Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 192Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1894Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1758Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1573Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 857Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1285Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 702Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 535Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 982Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1214Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 440Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 357Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 434Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 357Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 368Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 78Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 67Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33Kbit/s delay 72ms
sleep 8s

ipfw pipe 3 config bw 2132Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 55Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9175Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13829Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19051Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18347Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16047Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8778Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 46672Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 177097Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 220019Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 252345Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 250604Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 289095Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 259671Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 244061Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 237238Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 218967Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 6952Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18496Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18146Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 50229Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 75892Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 115907Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 162454Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 148029Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 183876Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 184955Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 119372Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 2679Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9930Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18593Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18964Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18790Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18916Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20218Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18426Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19471Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47004Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 131535Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 78627Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 20659Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23323Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23677Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24325Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25205Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23600Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23710Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24244Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24364Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23744Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23033Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23033Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58782Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84678Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 121105Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 227557Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 236301Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 253515Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 272324Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 261105Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 283492Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 285537Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 239558Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 23143Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29679Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30732Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29098Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 138937Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 170759Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 153994Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 167329Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 167972Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 93352Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 215308Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 261025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 257446Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 280552Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 211629Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 211237Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 245778Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 239494Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 236616Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 200156Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11824Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19271Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20049Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20163Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20106Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19319Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20186Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19844Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 83987Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 45139Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20103Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30873Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 30622Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31921Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 28849Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 29849Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31931Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 31126Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30127Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7210Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2574Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18030Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88337Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 230002Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 277629Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 223237Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 245576Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 253755Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 183606Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 66691Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66691Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22955Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 111987Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 238715Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 227227Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 234669Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 170711Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 213480Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 250442Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 223698Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 239565Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 107376Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 18158Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17914Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27624Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70223Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88387Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 166272Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 192828Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 156786Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 127009Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 157975Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 145770Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 145770Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 127248Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 146693Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 140493Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 140599Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 160228Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 138533Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 130546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 115552Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 114045Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18512Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18512Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2197Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17160Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 55017Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 101351Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 104514Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 115476Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 95783Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 91463Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84369Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 97856Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7207Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7207Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4955Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25127Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23299Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26205Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70461Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 58644Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 71836Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56951Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60284Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 45396Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59850Kbit/s delay 72ms
sleep 1s

ipfw -q flush
ipfw -q pipe flush