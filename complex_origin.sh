#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from 192.168.168.1 to me
ipfw add pipe 3 ip from me to 192.168.168.1

ipfw pipe 3 config bw 3855Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3295Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3857Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3703Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1867Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3884Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3907Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3911Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3822Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3818Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3849Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3973Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3810Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3765Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4016Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3814Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3826Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3915Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3857Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3841Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3791Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3981Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3756Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3993Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3853Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3720Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3919Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3869Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3196Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2886Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2571Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2942Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3129Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3062Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3223Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3316Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3706Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3830Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3862Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3586Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4062Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3776Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3911Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3833Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3780Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3889Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3919Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3858Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3872Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3919Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3688Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3728Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4156Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3838Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3911Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3769Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3923Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3814Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3844Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3868Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3783Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4122Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3674Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3870Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3249Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2770Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2916Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2852Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3199Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2295Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2267Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2611Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2485Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2312Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2578Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1842Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2384Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1774Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1704Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2482Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2882Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3013Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2873Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2244Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3723Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2510Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2731Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1507Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1533Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 612Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 792Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 313Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 671Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 701Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 175Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 216Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 396Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 390Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 437Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 600Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2022Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1768Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1202Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1491Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1311Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 722Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1085Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 967Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1319Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 864Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 945Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 875Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 864Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1155Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 782Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 875Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1062Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1049Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1179Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1131Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1272Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1168Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 479Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 490Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 362Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 735Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 840Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 623Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 596Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 536Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 548Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 432Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 561Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 958Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1027Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 742Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 571Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 735Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 687Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 642Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 723Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 782Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 782Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 769Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 945Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 817Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 793Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 513Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 490Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 547Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 420Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 490Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 537Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 607Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 688Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 372Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 432Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 806Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1050Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1484Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1482Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1669Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1205Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1579Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1880Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2080Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1961Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2197Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3397Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2942Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2198Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3117Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2487Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2723Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2562Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2551Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2244Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1494Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2463Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2324Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2561Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2951Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2799Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3094Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3109Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3246Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3301Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2614Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2618Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2676Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2706Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2767Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2895Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3083Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3129Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3460Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3409Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1962Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2650Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2837Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2814Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2310Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2324Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1542Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1599Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1365Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 875Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1833Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2197Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2125Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2174Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2115Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2103Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2115Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2136Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2095Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2092Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1868Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1714Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1694Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1800Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1798Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1939Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1891Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1952Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1928Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1788Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1936Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1788Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1613Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1484Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1567Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1719Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1182Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1132Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 817Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 420Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 396Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 724Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 444Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 302Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 440Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 456Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 548Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 477Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 444Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 256Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 361Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 303Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 325Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 209Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 373Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 851Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 724Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 677Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 605Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 583Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1068Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 794Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1063Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1306Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 759Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 887Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 793Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 653Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 585Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 864Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 910Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 804Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 863Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 706Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 607Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 128Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 871Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 350Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 620Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 981Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1413Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1658Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2251Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2311Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2370Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1413Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1448Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1798Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2018Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2533Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2893Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1260Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1144Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1819Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2496Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1694Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1740Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2611Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1892Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2671Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2345Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1436Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3079Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2779Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2473Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2577Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2337Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2010Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2107Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2207Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2209Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2466Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3289Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3449Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2882Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3637Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3982Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3920Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3460Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4133Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1783Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1221Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 687Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1015Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1541Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3105Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3586Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3594Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2856Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2443Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2042Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1368Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1833Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1928Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2589Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3243Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1669Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 642Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 840Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2036Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2557Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2452Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2276Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2181Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2501Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2150Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1870Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1691Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1505Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 944Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1110Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1313Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 759Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 126Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2134Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2503Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3682Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4779Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3337Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2947Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4906Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5165Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5213Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5514Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4728Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5552Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5640Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5078Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4750Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4549Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2627Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1152Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 382Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 46Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1133Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 619Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 678Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 930Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1172Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1692Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 956Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1249Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1009Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1294Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2315Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2905Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3511Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2520Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1879Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2037Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1862Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1398Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 412Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 93Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1332Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 935Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1424Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1954Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1684Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1585Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1914Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2304Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2741Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1681Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1913Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1454Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 741Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 105Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 444Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 210Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3401Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3689Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3546Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3595Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3777Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3681Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3764Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3258Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3968Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3764Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4090Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3101Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3365Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1828Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2569Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2349Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2241Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3435Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3083Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2613Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3476Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2778Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2272Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2343Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2541Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2042Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 958Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1693Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1563Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1390Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1530Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1618Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1385Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1415Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1296Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1413Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1378Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1108Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1400Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2278Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2324Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1546Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2028Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2483Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1497Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1541Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1714Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2466Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2758Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2653Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3602Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2887Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2466Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3311Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3316Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2641Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3015Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3231Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2787Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3770Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2933Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3290Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3286Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3960Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3817Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4043Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4466Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3954Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4386Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5001Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3960Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4766Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4047Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4054Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4064Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3962Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3459Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2302Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1764Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4028Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3120Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3738Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4993Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3981Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3338Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 897Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 245Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5227Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5446Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4606Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4873Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4049Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3547Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5260Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5324Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3789Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5458Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5272Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4853Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4742Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4886Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4864Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4207Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4892Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4396Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1926Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3264Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3818Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3694Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1438Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1811Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2628Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2574Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2881Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2437Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2692Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3506Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3477Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3172Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3074Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3965Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4254Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3541Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4150Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4659Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3584Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1309Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2045Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2779Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2989Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4148Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3432Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4179Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3542Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4060Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3919Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4067Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4955Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4342Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4995Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3955Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3808Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4453Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4927Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4515Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4095Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5318Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4664Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2976Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1966Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3868Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3709Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4044Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3773Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3420Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3332Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3287Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2767Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1936Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1741Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1836Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1445Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1581Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2968Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2938Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2208Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2036Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2676Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2150Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3857Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3967Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4642Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3895Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3836Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4686Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3036Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2820Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3510Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3281Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4223Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4562Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4925Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4365Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3558Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4051Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3413Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3804Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2938Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3276Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3872Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3896Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3693Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4199Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4210Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3857Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3857Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2931Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2050Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3098Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3646Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3106Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4110Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3286Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2984Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2459Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3600Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3409Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3985Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3689Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2585Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1994Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2614Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2259Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2717Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2638Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3244Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3554Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3670Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3440Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3758Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3907Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3575Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2530Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1061Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2539Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3538Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2771Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 747Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 991Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 852Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2265Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2646Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3393Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4103Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4506Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4675Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4574Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5232Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4342Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1981Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3406Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3868Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3823Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3344Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3514Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3957Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4262Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3588Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3813Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3100Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2159Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1744Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1087Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1412Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 723Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1987Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3131Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3212Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4088Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4757Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5353Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5006Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5044Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4827Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4501Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4617Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4164Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3627Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2681Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1156Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2009Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5313Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3813Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2802Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2510Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2004Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1238Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2360Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2568Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2592Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2438Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1874Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1072Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 561Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1115Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2031Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2031Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2407Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2887Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3050Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2615Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2318Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2394Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2676Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2489Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2594Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2751Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2402Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 888Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2352Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2751Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1790Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3366Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 151Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3276Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3162Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2571Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2370Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2465Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2435Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2138Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1899Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2103Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2172Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1975Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2099Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2024Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1926Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1811Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2097Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2228Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1948Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1496Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1948Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2281Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1928Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1415Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1996Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2298Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2362Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2337Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2382Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2544Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2587Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3128Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2863Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3107Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3860Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3342Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4233Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3823Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3798Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3837Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3908Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4378Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4330Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5471Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4728Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4420Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4260Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3958Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3962Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4063Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4017Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4223Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4932Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5569Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5038Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5112Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4575Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5424Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5182Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5435Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5289Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4707Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4985Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5581Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5458Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4650Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5482Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5002Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3759Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2583Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4618Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4643Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4961Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5562Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5210Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5208Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5546Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4662Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5243Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5483Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5223Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5472Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5330Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5628Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4869Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5249Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3554Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5231Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4781Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5084Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4972Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5458Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4850Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5575Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5336Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5499Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5552Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5440Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5552Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5546Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4985Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3286Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3260Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3462Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3848Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3978Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3935Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4087Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4285Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4289Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5192Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4349Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4642Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5217Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4229Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4343Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3834Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3273Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3170Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3120Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3674Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3662Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3933Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4879Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5482Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5418Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5156Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5546Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4780Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1984Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1848Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1815Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1758Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1437Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 93Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3041Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4144Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3155Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 408Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2138Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3433Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4133Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3942Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4102Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3911Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4398Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4032Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4083Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4402Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4083Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4051Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4045Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3900Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3523Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4044Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3635Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3670Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3974Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3752Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3931Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3681Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3654Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3432Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2616Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1846Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2630Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4060Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4270Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4103Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3039Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3094Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2892Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2510Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1391Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2139Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1627Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 688Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1309Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3541Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3374Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1052Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4191Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3585Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3560Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3530Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3791Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3779Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3599Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2921Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2930Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2971Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3114Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2852Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2694Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2472Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1998Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1426Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1154Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1062Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1003Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 676Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 969Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1377Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1016Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1074Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1026Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1087Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 699Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1390Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1180Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 888Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1202Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1262Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1312Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1367Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1333Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1415Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1485Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1507Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1623Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1741Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1938Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2197Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2323Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2737Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2618Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2878Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2618Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2924Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2685Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2653Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3038Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3012Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3146Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3207Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2977Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2536Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2033Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2849Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3479Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3456Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2887Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3305Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2089Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1133Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1050Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1179Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1636Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1806Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 989Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 268Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1156Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1109Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1505Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1482Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1553Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1319Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 980Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1341Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 303Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 397Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1471Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1190Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 829Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 700Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 700Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 572Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 186Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 198Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 279Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 175Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 186Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 302Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 676Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1085Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 677Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 629Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3039Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3327Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2534Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3845Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3640Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4172Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3414Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2930Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3246Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3417Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3226Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4479Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4488Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5114Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5283Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4577Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4489Kbit/s delay 25ms
sleep 1.0s

ipfw -q flush
ipfw -q pipe flush
