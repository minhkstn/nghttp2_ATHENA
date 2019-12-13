#!/usr/bin/env bash
ipfw -q flush
ipfw -q pipe flush
ipfw add pipe 3 ip from 192.168.168.1 to me
ipfw add pipe 3 ip from me to 192.168.168.1

ipfw pipe 3 config bw 19200Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24911Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23374Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35689Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28066Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28371Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30438Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23428Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27543Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20880Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23622Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22220Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18516Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18311Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19939Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10546Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5327Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11722Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13900Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9004Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9910Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6340Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3073Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2793Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3483Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5176Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2922Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6308Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2846Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3418Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3245Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4432Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1585Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1261Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2566Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2383Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1391Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 107Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2372Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14828Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29666Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4956Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 47123Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39904Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29172Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17951Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36449Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34249Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 50983Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 53610Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 51525Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 52334Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 57273Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28298Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20779Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30304Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 40903Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38756Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26509Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39598Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24726Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29898Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27094Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11970Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25649Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32724Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39824Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34294Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9312Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25722Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 64684Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28596Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8984Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14148Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12541Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6869Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9047Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24361Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9932Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25704Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13969Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16693Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15194Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12552Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6114Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4766Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5715Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3343Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4270Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4410Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4033Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4108Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2803Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2749Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3235Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3731Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4496Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6340Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5338Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3990Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8821Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16149Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20095Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10681Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3116Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 37566Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11705Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10126Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12072Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15879Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20910Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12013Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8821Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7710Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16295Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14352Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13868Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10234Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13253Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12638Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9285Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9446Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11722Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9581Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15368Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19047Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5888Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8314Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10611Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12585Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13296Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12957Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15663Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16704Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17615Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7337Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28945Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33441Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22031Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17303Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17550Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19734Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12423Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19680Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17518Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20796Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17475Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9462Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21708Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16219Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15723Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18278Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24037Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26474Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26960Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23531Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25428Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12531Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34333Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39398Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 40793Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34357Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18645Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9368Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 44367Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29300Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36360Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24272Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34524Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33333Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33075Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39813Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 40463Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39801Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36779Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38309Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 48531Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 37435Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28852Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60882Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59755Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39292Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38188Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5881Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25264Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 70975Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35657Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27428Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27823Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30345Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25052Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25281Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24814Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17739Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24824Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7764Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38056Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22553Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21499Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17660Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26799Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30123Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27458Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29254Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25462Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29298Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26051Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17381Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23649Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24244Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21886Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20815Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19519Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20392Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20370Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23185Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18850Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16451Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22776Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18674Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20627Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20802Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17119Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22849Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18080Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20187Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17211Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1073Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15777Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30070Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 819Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33258Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18171Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13252Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16402Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12121Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12854Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11635Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10988Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10449Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7106Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8799Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8131Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8972Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7063Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5413Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5143Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9241Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10595Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10648Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11088Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16291Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12380Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9026Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13016Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14064Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15165Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11225Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8810Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5963Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3396Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2501Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4669Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 1358Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2458Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29849Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25192Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27304Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36293Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36392Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28058Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34745Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2296Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20166Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16885Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33961Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29775Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32022Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28327Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 56559Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 37820Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28894Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26225Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15204Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25029Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22534Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31616Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31096Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15663Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13631Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 62062Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34804Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16512Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32073Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28056Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27131Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25461Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30648Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15475Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30542Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36378Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30112Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20306Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19612Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25399Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14910Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17446Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19735Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28078Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26250Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28034Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18504Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21621Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22710Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 53109Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35290Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42029Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31374Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30071Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35782Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38727Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 37160Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21657Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 40601Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 44646Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 61227Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 56744Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39782Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32415Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26804Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60391Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 50909Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43005Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33638Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27885Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42267Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42946Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 40338Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31001Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32538Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60407Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 61365Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 51836Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34339Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22899Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20615Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 40494Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21635Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29570Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24045Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 47792Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 62521Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 61931Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 58063Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25859Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 44843Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 66813Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 63373Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 61865Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16613Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15564Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12517Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36339Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 53510Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15646Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29802Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 64831Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 61587Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 64323Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30375Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 46989Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 63766Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 63045Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 61997Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 37093Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32997Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 55820Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59129Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 46235Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25100Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42401Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36732Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 48070Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28884Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23085Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38469Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59097Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 58916Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 62652Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26804Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 45187Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59441Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 57556Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 63078Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33882Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27656Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59572Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 55221Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2361Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 0Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42218Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 62734Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 37175Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 54411Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 54722Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60801Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59424Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39026Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24903Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 56999Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 61227Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60604Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33849Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9994Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25804Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 58146Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59572Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43188Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42401Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60145Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 57180Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 54615Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33882Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23642Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59899Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 45974Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36598Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31560Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32003Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13846Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13275Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18009Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18084Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14353Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10815Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3386Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2951Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22699Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19215Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20738Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16685Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17359Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17010Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33654Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34124Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 40504Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18862Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 47185Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33110Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32093Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21341Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28491Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31241Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30498Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26844Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20351Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21540Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11727Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6190Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16165Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15043Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17966Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18357Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12538Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9468Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16936Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14218Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9349Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9446Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26647Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24830Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18285Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14232Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9436Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15183Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8271Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14180Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13339Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3418Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 4788Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15011Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18044Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24444Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20381Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8842Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6184Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6362Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9026Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 2954Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 3310Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8098Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21105Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7597Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26414Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14214Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17738Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 8195Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 6966Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11409Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18861Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18491Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19629Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17175Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7848Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5327Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 668Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5672Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9144Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16823Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13369Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16631Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19217Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26517Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23584Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23819Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23921Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32634Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 43912Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 49519Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28215Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16510Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14256Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11698Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29151Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12277Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9576Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10874Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 5215Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21902Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 10083Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15117Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35962Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24824Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23023Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16342Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 9586Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17130Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23525Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28113Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 23832Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30950Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20166Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28889Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 30575Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20259Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25234Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32048Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 41276Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35578Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 39646Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 33885Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 44125Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32325Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59555Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 56292Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 54262Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38211Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21479Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 55246Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 61849Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 55001Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 47742Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26214Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 51314Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 52544Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16456Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21857Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34947Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 57196Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 56229Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 56852Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 46727Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21495Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 50511Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 62521Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 36818Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26658Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19955Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31440Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20273Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 31604Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22126Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20156Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 28170Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42847Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14342Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18731Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26010Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21082Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17599Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 14741Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22775Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11405Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 15798Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 17559Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12936Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 16509Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21400Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 21886Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22097Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24402Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 19567Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 24166Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20187Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22765Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20236Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13215Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 11279Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 13744Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 7230Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 18915Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22975Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 25110Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26198Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20476Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 22340Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29339Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 20910Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 34650Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35192Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32302Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 35733Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 32718Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 51625Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 47312Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38258Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 12640Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 29245Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 38961Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60325Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 56852Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 58064Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42827Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 26673Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 47546Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 60899Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 59441Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 54050Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 42139Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 27688Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 49577Kbit/s delay 25ms
sleep 1.0s

ipfw pipe 3 config bw 58753Kbit/s delay 25ms
sleep 1.0s

ipfw -q flush
ipfw -q pipe flush