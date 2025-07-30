clear -all

analyze -sv gold.v
analyze -sv gate.v


analyze -sv top_wrapper.v

elaborate -top top_wrapper
clock clk_top -both_edges
reset -expression ~rst

assert -name p1 {add3_gold.sum == add3_gate.sum}
