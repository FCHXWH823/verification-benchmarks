clear -all


analyze -sv or1200/or1200_alu.v

analyze -sv or1200/or1200_amultp2_32x32.v

analyze -sv or1200/or1200_cfgr.v

analyze -sv or1200/or1200_alu.v

analyze -sv or1200/or1200_amultp2_32x32.v

analyze -sv or1200/or1200_cfgr.v

analyze -sv or1200/or1200_cpu.v

analyze -sv or1200/or1200_ctrl.v

analyze -sv or1200/or1200_dc_fsm.v

analyze -sv or1200/or1200_dc_ram.v

analyze -sv or1200/or1200_dc_tag.v

analyze -sv or1200/or1200_dc_top.v

analyze -sv or1200/or1200_defines.v

analyze -sv or1200/or1200_dmmu_tlb.v

analyze -sv or1200/or1200_dmmu_top.v

analyze -sv or1200/or1200_dpram_256x32.v

analyze -sv or1200/or1200_dpram_32x32.v

analyze -sv or1200/or1200_dpram.v

analyze -sv or1200/or1200_du.v

analyze -sv or1200/or1200_except.v

analyze -sv or1200/or1200_fpu_addsub.v

analyze -sv or1200/or1200_alu.v

analyze -sv or1200/or1200_amultp2_32x32.v

analyze -sv or1200/or1200_cfgr.v

analyze -sv or1200/or1200_cpu.v

analyze -sv or1200/or1200_ctrl.v

analyze -sv or1200/or1200_dc_fsm.v

analyze -sv or1200/or1200_dc_ram.v

analyze -sv or1200/or1200_dc_tag.v

analyze -sv or1200/or1200_dc_top.v

analyze -sv or1200/or1200_defines.v

analyze -sv or1200/or1200_dmmu_tlb.v

analyze -sv or1200/or1200_dmmu_top.v

analyze -sv or1200/or1200_dpram_256x32.v

analyze -sv or1200/or1200_dpram_32x32.v

analyze -sv or1200/or1200_dpram.v

analyze -sv or1200/or1200_du.v

analyze -sv or1200/or1200_except.v

analyze -sv or1200/or1200_fpu_addsub.v

analyze -sv or1200/or1200_fpu_arith.v

analyze -sv or1200/or1200_fpu_div.v

analyze -sv or1200/or1200_fpu_fcmp.v

analyze -sv or1200/or1200_fpu_intfloat_conv_except.v

analyze -sv or1200/or1200_fpu_intfloat_conv.v

analyze -sv or1200/or1200_fpu_mul.v

analyze -sv or1200/or1200_fpu_post_norm_addsub.v

analyze -sv or1200/or1200_fpu_post_norm_div.v

analyze -sv or1200/or1200_fpu_post_norm_intfloat_conv.v

analyze -sv or1200/or1200_fpu_post_norm_mul.v

analyze -sv or1200/or1200_fpu_pre_norm_addsub.v

analyze -sv or1200/or1200_fpu_pre_norm_div.v

analyze -sv or1200/or1200_fpu_pre_norm_mul.v

analyze -sv or1200/or1200_fpu.v

analyze -sv or1200/or1200_freeze.v

analyze -sv or1200/or1200_genpc.v

analyze -sv or1200/or1200_gmultp2_32x32.v

analyze -sv or1200/or1200_ic_fsm.v

analyze -sv or1200/or1200_ic_ram.v

analyze -sv or1200/or1200_ic_tag.v

analyze -sv or1200/or1200_ic_top.v

analyze -sv or1200/or1200_if.v

analyze -sv or1200/or1200_immu_tlb.v

analyze -sv or1200/or1200_immu_top.v

analyze -sv or1200/or1200_iwb_biu.v

analyze -sv or1200/or1200_lsu.v

analyze -sv or1200/or1200_mem2reg.v

analyze -sv or1200/or1200_mult_mac.v

analyze -sv or1200/or1200_operandmuxes.v

analyze -sv or1200/or1200_pic.v

analyze -sv or1200/or1200_pm.v

analyze -sv or1200/or1200_qmem_top.v

analyze -sv or1200/or1200_reg2mem.v

analyze -sv or1200/or1200_rfram_generic.v

analyze -sv or1200/or1200_rf.v

analyze -sv or1200/or1200_sb_fifo.v

analyze -sv or1200/or1200_sb.v

analyze -sv or1200/or1200_spram_1024x32_bw.v

analyze -sv or1200/or1200_spram_1024x32.v

analyze -sv or1200/or1200_spram_1024x8.v

analyze -sv or1200/or1200_spram_128x32.v

analyze -sv or1200/or1200_spram_2048x32_bw.v

analyze -sv or1200/or1200_spram_2048x32.v

analyze -sv or1200/or1200_spram_2048x8.v

analyze -sv or1200/or1200_spram_256x21.v

analyze -sv or1200/or1200_spram_32_bw.v

analyze -sv or1200/or1200_spram_32x24.v

analyze -sv or1200/or1200_spram_512x20.v

analyze -sv or1200/or1200_spram_64x14.v

analyze -sv or1200/or1200_spram_64x22.v

analyze -sv or1200/or1200_spram_64x24.v

analyze -sv or1200/or1200_spram.v

analyze -sv or1200/or1200_sprs.v

analyze -sv or1200/or1200_tpram_32x32.v

analyze -sv or1200/or1200_tt.v

analyze -sv or1200/or1200_wb_biu.v

analyze -sv or1200/or1200_wbmux.v

analyze -sv or1200/or1200_xcv_ram32x8d.v

analyze -sv or1200/timescale.v

analyze -sv or1200/or1200_top.v

elaborate -top or1200_top

clock clk_i -factor 1 -phase 1
reset -expression ~rst_i
assert -name or1200_p1 {(or1200_except.wb_pc == or1200_sprs.spr_dat_ppc) || (rst == 1)}
assert -name or1200_p2 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 1) )) || (or1200_ctrl.ex_pc == or1200_sprs.spr_dat_npc) || (rst == 1)}
assert -name or1200_p3 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 2) )) || (or1200_ctrl.ex_pc == or1200_sprs.spr_dat_npc) || (rst == 1)}
assert -name or1200_p4 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 3) )) || (or1200_ctrl.ex_pc == or1200_sprs.spr_dat_npc) || (rst == 1)}
assert -name or1200_p5 {~(((or1200_ctrl.ex_insn & 'hFFE00000) >> 21 == 1826) && (operand_a > operand_b)) || (or1200_sprs.to_sr[9] == 1) || (rst == 1)}
assert -name or1200_p6 {~(((or1200_ctrl.ex_insn & 'hFFE00000) >> 21 == 1829) && (operand_a <= operand_b)) || (or1200_sprs.to_sr[9] == 1) || (rst == 1)}
assert -name or1200_p7 {(~((or1200_ctrl.ex_insn & 'hFC000000)>>26==1)) || (or1200_rf.rf_addrw==9) || (rst == 1)}
assert -name or1200_p8 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 2) )) || (or1200_rf.rf_addrw != 9) || (rst == 1)}
assert -name or1200_p9 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 1) )) || (or1200_sprs.sr[0] == prev_sr0) || (rst == 1)}
assert -name or1200_p10 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 2) )) || (or1200_sprs.sr[0] == prev_sr0) || (rst == 1)}
assert -name or1200_p11 {(~( ((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 3) & (or1200_ctrl.ex_insn & 'h3C000000 != 0) )) || (or1200_sprs.sr[0] == prev_sr0) || (rst == 1)}
assert -name or1200_p12 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 1) )) || (or1200_except.epcr == prev_epcr) || (rst == 1)}
assert -name or1200_p13 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 2) )) || (or1200_except.epcr == prev_epcr) || (rst == 1)}
assert -name or1200_p14 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 3) )) || (or1200_except.epcr == prev_epcr) || (rst == 1)}
assert -name or1200_p15 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 1) )) || (or1200_except.eear == prev_eear) || (rst == 1)}
assert -name or1200_p16 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 2) )) || (or1200_except.eear == prev_eear) || (rst == 1)}
assert -name or1200_p17 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 3) )) || (or1200_except.eear == prev_eear) || (rst == 1)}
assert -name or1200_p18 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 1) )) || (or1200_except.esr == prev_esr) || (rst == 1)}
assert -name or1200_p19 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 2) )) || (or1200_except.esr == prev_esr) || (rst == 1)}
assert -name or1200_p20 {(~( ((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 3) & (or1200_ctrl.ex_insn & 'h3C000000 != 0) )) || (or1200_except.esr == prev_esr) || (rst == 1)}
assert -name or1200_p21 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9) )) || (or1200_except.eear == prev_eear) || (rst == 1)}
assert -name or1200_p22 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9) )) || (or1200_except.epcr == prev_epcr) || (rst == 1)}
assert -name or1200_p23 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9) )) || (or1200_except.esr == prev_esr) || (rst == 1)}
assert -name or1200_p24 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9)) || (or1200_genpc.pc == or1200_except.epcr) || (rst == 1)}
assert -name or1200_p25 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9)) || (or1200_sprs.to_sr == or1200_except.esr) || (rst == 1)}
assert -name or1200_p26 {(~((prev_ex_insn & 'hFFFF0000) >> 16 == 8192)) || (~((or1200_ctrl.ex_insn & 'hFFFF0000) >> 16 != 8192)) || (or1200_except.lsu_addr == or1200_except.eear) || (rst == 1)}
assert -name or1200_p27 {(~((prev_ex_insn & 'hFFFF0000) >> 16 == 8192)) || (~((or1200_ctrl.ex_insn & 'hFFFF0000) >> 16 != 8192)) || (or1200_except.spr_dat_npc == or1200_except.epcr) || (rst == 1)}
assert -name or1200_p28 {(~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.lsu_addr == or1200_except.eear) || (rst == 1)}
assert -name or1200_p29 {(~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.spr_dat_npc == or1200_except.epcr) || (rst == 1)}
assert -name or1200_p30 {(~((or1200_ctrl.ex_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_rf.rf_addrw == ((or1200_ctrl.ex_insn & 'h03E00000) >> 21)) || (rst == 1)}
assert -name or1200_p31 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 47) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p32 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 57) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p33 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 51) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p34 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 52) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p35 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 53) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p36 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 54) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p37 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 55) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p38 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 48) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p39 {(~(((or1200_ctrl.ex_insn & 'hFF000000) >> 24 == 21) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p40 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p41 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 17) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p42 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 0) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p43 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 4) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p44 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 3) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p45 {(~(((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 8) )) || (or1200_rf.we == 0) || (rst == 1)}
assert -name or1200_p46 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 48)) || (or1200_sprs.spr_dat_o == operand_b)}
assert -name or1200_p47 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 2) )) || ((or1200_ctrl.ex_insn & 'h03e00000) >> 21 == or1200_rf.addrw) || (rst == 1)}
assert -name or1200_p48 {(~(((or1200_ctrl.ex_insn & 'hC0000000) >> 30 == 3) )) || ((or1200_ctrl.ex_insn & 'h03e00000) >> 21 == or1200_rf.addrw) || (rst == 1)}
assert -name or1200_p49 {((or1200_ctrl.ex_insn & 'hFC000000) >> 26 != 'h1c) || (rst == 1)}
assert -name or1200_p50 {(id_insn == 32'h14410000) || (id_insn == 32'h14610000) || (id_insn == prev_if_insn) || (prev_id_freeze) || (rst == 1)}
assert -name or1200_p51 {(if_insn == 32'h14610000) || (if_insn == 32'h14410000) || (if_insn == icpu_dat_i ) || (if_insn == 0) || (rst == 1) || (if_insn == or1200_if.insn_saved)}
assert -name or1200_p52 {(operand_b == dcpu_dat_o) || (rst == 1)}
assert -name or1200_p53 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 32)) || (or1200_rf.rf_dataw == dcpu_dat_o) || (rst == 1)}
assert -name or1200_p54 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 33)) || (or1200_rf.rf_dataw == dcpu_dat_o) || (rst == 1)}
assert -name or1200_p55 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 34)) || (or1200_rf.rf_dataw == dcpu_dat_o) || (rst == 1)}
assert -name or1200_p56 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 35)) || (or1200_rf.rf_dataw == dcpu_dat_o) || (rst == 1)}
assert -name or1200_p57 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 36)) || (or1200_rf.rf_dataw == dcpu_dat_o) || (rst == 1)}
assert -name or1200_p58 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 37)) || (or1200_rf.rf_dataw == dcpu_dat_o) || (rst == 1)}
assert -name or1200_p59 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 38)) || (or1200_rf.rf_dataw == dcpu_dat_o) || (rst == 1)}
assert -name or1200_p60 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 32)) || (dcpu_adr_o == operand_a + ex_simm) || (rst == 1)}
assert -name or1200_p61 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 33)) || (dcpu_adr_o == operand_a + ex_simm) || (rst == 1)}
assert -name or1200_p62 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 34)) || (dcpu_adr_o == operand_a + ex_simm) || (rst == 1)}
assert -name or1200_p63 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 35)) || (dcpu_adr_o == operand_a + ex_simm) || (rst == 1)}
assert -name or1200_p64 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 36)) || (dcpu_adr_o == operand_a + ex_simm) || (rst == 1)}
assert -name or1200_p65 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 37)) || (dcpu_adr_o == operand_a + ex_simm) || (rst == 1)}
assert -name or1200_p66 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 38)) || (dcpu_adr_o == operand_a + ex_simm) || (rst == 1)}
assert -name or1200_p67 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 37)) || ((or1200_lsu.or1200_mem2reg.regdata & 16'hFFFF0000) == 0) || (rst == 1)}
assert -name or1200_p68 {(~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 53)) || ((or1200_lsu.or1200_reg2mem.memdata & 16'hFFFF) == (or1200_lsu.or1200_reg2mem.regdata & 16'hFFFF)) || (rst == 1)}
assert -name or1200_p69 {(or1200_lsu.dcpu_dat_i == or1200_lsu.or1200_mem2reg.memdata) || (rst == 1)}
assert -name or1200_p70 {(~((or1200_rf.rf_we == 1) && (or1200_rf.rf_addrw == 0))) || (or1200_rf.rf_dataw == 0) || (rst == 1)}
assert -name or1200_p71 {(~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE00000C8)) || (((operand_a << (6'd32 - {1'b0, operand_b[4:0]})) | (operand_a >> operand_b[4:0])) == or1200_rf.rf_dataw) || (or1200_rf.rf_dataw == 0) || (rst == 1)}
