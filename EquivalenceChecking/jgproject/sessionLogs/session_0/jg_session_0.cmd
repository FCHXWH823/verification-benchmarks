# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.09
# platform  : Linux 3.10.0-1160.el7.x86_64
# version   : 2022.09p001 64 bits
# build date: 2022.10.25 11:32:28 UTC
# ----------------------------------------
# started   : 2025-07-30 11:51:41 CST
# hostname  : icpc.(none)
# pid       : 103017
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33338' '-nowindow' '-style' 'windows' '-data' 'AAAA+HicbY7dCgFRFIW/Q27lEbwAXmDu5I6Ewp00hqamGfkp3PCo3mR8jRRl1dprrd0+e58ARPeyLKlQv1laDBkxZWAdM1dhSY+EC3sKDpxMM91Wt2BtJ7HT1210OXGVM9LK5Rz/5K6za99XCM+3EgW+ESaPH4XGZ1DWZJOOCwtW7Dh7ANp+52xv5fpcZlw9mMqu52KzeAH68SP4' '-proj' '/home/master/verification-benchmarks/EquivalenceChecking/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/master/verification-benchmarks/EquivalenceChecking/jgproject/.tmp/.initCmds.tcl' 'run_analysis.tcl'
clear -all

analyze -sv gold.v
analyze -sv gate.v


analyze -sv top_wrapper.v

elaborate -top top_wrapper
clock clk_top -both_edges
exit
