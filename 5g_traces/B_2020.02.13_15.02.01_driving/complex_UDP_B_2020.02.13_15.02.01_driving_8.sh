#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 udp from any to me
ipfw add pipe 3 udp from me to any

ipfw pipe 3 config bw 95524Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 112916Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 44061Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 44061Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20574Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19411Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20303Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 48966Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 106362Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 98750Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 116546Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 113447Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 103654Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 27246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 27246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 77306Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 81317Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 104605Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 116780Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 86135Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 86076Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80913Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 97397Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 121257Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 36267Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 50649Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 124658Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 132155Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 102761Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 76329Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 98931Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 125444Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 126270Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88433Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 124583Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 8500Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 68167Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 207862Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 233202Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 201576Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 70820Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 143672Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 47896Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 97867Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 103652Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3450Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13533Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 117267Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66504Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 63866Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 34908Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59981Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42592Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64025Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 79670Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 79120Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11714Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18517Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19840Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18500Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14664Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 39184Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60948Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 108843Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 110704Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 116346Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 1503Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15889Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16743Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 110295Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 206113Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 256540Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 264295Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 263557Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 222037Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 122398Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 124509Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 107877Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 259996Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 268116Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 223726Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 247070Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 265279Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 249174Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 250523Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 273659Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 238104Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 273746Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 68073Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 68073Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22194Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 22445Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22446Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23431Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 33153Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 90937Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 117549Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 78396Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 77822Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 47312Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11795Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18930Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 35653Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32772Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37567Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 60782Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64021Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 61194Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 77898Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 30347Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 33764Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 52544Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 52960Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56319Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54680Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 54155Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 166644Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 219644Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 281586Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 279898Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 59316Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2458Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30382Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 31134Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32251Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31102Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17494Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26492Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 138510Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 212426Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 270643Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19978Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3974Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17733Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17857Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18388Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18170Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18164Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89232Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 132745Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 186284Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82872Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 139937Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7007Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20213Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 34699Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 49516Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56625Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 63872Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72747Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80471Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80471Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 88313Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 97076Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 82243Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3099Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 36358Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 178905Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 180819Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 180512Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 165506Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 177041Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 175756Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 179842Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 180204Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 68789Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 17287Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20046Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19868Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20419Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20856Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21067Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 11180Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16838Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18484Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3705Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3705Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 30426Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 32334Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30238Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 31101Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 66948Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 145536Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 112153Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 58430Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 21611Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21611Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 4293Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16502Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12219Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5300Kbit/s delay 72ms
sleep 6s

ipfw pipe 3 config bw 6208Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22192Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 9563Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25049Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23803Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24562Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24701Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 24895Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25045Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24003Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24631Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23703Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 18389Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1227Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 71962Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 87737Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 89478Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 77273Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 325551Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 291419Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 251917Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 190059Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 211864Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 225410Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 127061Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 106632Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 288126Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 284946Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 254490Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 263081Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 267502Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 272153Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 260455Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 247537Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 228888Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 243198Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7402Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 7583Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23757Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23046Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23059Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23081Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 23056Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22742Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 23035Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 22457Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16003Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15518Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20509Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57577Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 129321Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 205588Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 187296Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 246668Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 228658Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 228336Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 162366Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13302Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 15663Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 45924Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 113929Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 99325Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 168088Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 126657Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 96252Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 104341Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 61946Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 16038Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 84794Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 114743Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 184466Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 111354Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 188081Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 113887Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 126952Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 160519Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 120587Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 80894Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4029Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10692Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30020Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 30994Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 280679Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 255498Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 240999Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 202742Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 204677Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 211739Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 222128Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 157316Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 36289Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 229699Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 158988Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 148671Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 153462Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 162915Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 162842Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 163381Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 171014Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 175515Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 126159Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 26199Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 156762Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 160049Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 200118Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 203481Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 214632Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 220397Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 210974Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 181015Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 180978Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 151917Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 175918Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 104499Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 208059Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 234018Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 223571Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 223571Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 266950Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 209239Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 173207Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 181891Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 173143Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 141731Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 15566Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37182Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 79486Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 326246Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 272860Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 207147Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 185741Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 201248Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 190138Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 205115Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 135398Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 38668Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 236596Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 185900Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 203052Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 213692Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 202793Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 128197Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 209327Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 205845Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 189744Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 95615Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 278597Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 294235Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 230699Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 253300Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 257300Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 256613Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 267665Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 270561Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 209968Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 24042Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24042Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 4442Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 219114Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 240403Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 253832Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 267388Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 200700Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 255163Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 256530Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 238271Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 57331Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 57331Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 13070Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 12992Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12490Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12170Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11935Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 24022Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 42626Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 100231Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 266556Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 37790Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 37790Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 20751Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19599Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 19859Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19077Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19590Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 21022Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19571Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 20511Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19938Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 18887Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 6489Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 17539Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17594Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 19243Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12004Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14153Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16357Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 15496Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 14504Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11792Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9606Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 3424Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9074Kbit/s delay 72ms
sleep 6s

ipfw pipe 3 config bw 3213Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 6545Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 16057Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 17305Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 7253Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56631Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 85049Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 121418Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 64259Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 72878Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 56847Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 53425Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 51228Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 45404Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3799Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 5127Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10819Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9577Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13171Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12669Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11498Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12795Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 12182Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 10832Kbit/s delay 72ms
sleep 3s

ipfw pipe 3 config bw 11994Kbit/s delay 72ms
sleep 134s

ipfw pipe 3 config bw 3777Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 2207Kbit/s delay 72ms
sleep 187s

ipfw pipe 3 config bw 52610Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 9923Kbit/s delay 72ms
sleep 4s

ipfw pipe 3 config bw 1885Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 11698Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 232988Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 238967Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 234503Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 68360Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1668Kbit/s delay 72ms
sleep 63s

ipfw pipe 3 config bw 1184Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 3622Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 42940Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 35729Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 1723Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 26733Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 32159Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 30680Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 143845Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 197804Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 189850Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 201712Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 217859Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 198582Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 170493Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 112983Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 25978Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 25412Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 58523Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 210380Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 238767Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 219951Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 235213Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 243501Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 237748Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 222277Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 159615Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 13880Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 108383Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 312386Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 402783Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 261128Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 361225Kbit/s delay 72ms
sleep 2s

ipfw pipe 3 config bw 304817Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 304802Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 305746Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 314093Kbit/s delay 72ms
sleep 1s

ipfw pipe 3 config bw 258906Kbit/s delay 72ms
sleep 1s

ipfw -q flush
ipfw -q pipe flush