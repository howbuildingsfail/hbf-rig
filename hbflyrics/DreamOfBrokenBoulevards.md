Prospect Of Ravenscar

https://soundcloud.com/howbuildingsfail/prospect-of-ravenscar

let pp1 =  degradeBy 0.1 $ juxBy 0.75 ((# speed "0.25") . rev . fast (slow 12 $ 4.2 + (0.03 * (irand 10))))  $ n "8*8 0*4 -10*2 [-777/6 -9/7]" # s "arpy"
let pp2 =  degradeBy 0.085 $ juxBy 0.75 ((# up "c3") . rev . fast (slow 8 $ 5.2 + (0.05 * (irand 19))  ) )  $ n "8*8 -24*4 66*4 [-777/3 -9/3]" # s "arpy"
let pp3 =  degradeBy 0.1 $ juxBy 0.75 ((# speed "0.25") . rev . fast 5.5)  $ n "7*8 [-14]*4 -1100*2 [-765*3 -9]" # s "arpy"
let pp4 =  degradeBy 0.1 $ juxBy 0.75 ((# speed "0.25") . rev . fast (slow 8 $ 2.2 + (0.25 * (irand 19))))  $ n "3*8 [-14]*4 -1100*2 [-765*3 -9]" # s "arpy"

let phh1 = n "12*2" # sound "hihat" # att (slow 14 $ sine1*0.5)  # rel (slow 13 $ sine1*2) # ffreq (irand 10000) # pan (slow 31 $ sine1) # amp 0.3
let psn1 = slow 4 $  n "[~ -24] [~ -12] [~ 0] [~ -10] " # sound "snare" # ffreq (irand 10000) # att (slow 17 $ sine1*0.5) # nudge "[0 0.4]*4"

d1 $ n "12*2" # sound "hihat" # att (slow 14 $ sine1*0.5)  # rel (slow 13 $ sine1*2) # ffreq (irand 10000) # pan (slow 31 $ sine1) # amp 0.01

-- loops
let lp1 = seqPLoop [(0, 16, pp2),(16, 32, pp3),(32, 48, pp4),(48, 64, pp1)]
let lp2 = seqPLoop [(0,64,phh1),(0,64,psn1),(0,64,lp1)]

cps (-1)
t1 (mortal 256 32) $  lp2
cps 1.2