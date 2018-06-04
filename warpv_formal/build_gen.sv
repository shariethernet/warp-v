// Generated by SandPiper(TM) 1.9-2018/02/11-beta from Redwood EDA.
// (Installed here: /home/akos/sandpiper.)
// Redwood EDA does not claim intellectual property rights to this file and provides no warranty regarding its correctness or quality.


`include "sandpiper_gen.vh"


genvar mem, regs, src;


//
// Signals declared top-level.
//


// For $reset.
wire L0_reset_a0;

// For |fetch/instr$Pc.
wire [31:2] FETCH_Instr_Pc_n1;
reg  [31:2] FETCH_Instr_Pc_a0,
            FETCH_Instr_Pc_a1;

// For |fetch/instr$RedirectShadowCnt.
wire [2:0] FETCH_Instr_RedirectShadowCnt_n1;
reg  [2:0] FETCH_Instr_RedirectShadowCnt_a0;

// For |fetch/instr$add_sub_rslt.
wire [31:0] FETCH_Instr_add_sub_rslt_a0;

// For |fetch/instr$addi_rslt.
wire [31:0] FETCH_Instr_addi_rslt_a0;

// For |fetch/instr$addr.
wire [31:0] FETCH_Instr_addr_a0;

// For |fetch/instr$and_rslt.
wire [31:0] FETCH_Instr_and_rslt_a0;

// For |fetch/instr$andi_rslt.
wire [31:0] FETCH_Instr_andi_rslt_a0;

// For |fetch/instr$auipc_rslt.
wire [31:0] FETCH_Instr_auipc_rslt_a0;

// For |fetch/instr$branch.
wire FETCH_Instr_branch_a0;

// For |fetch/instr$branch_target.
wire [31:2] FETCH_Instr_branch_target_a0;
reg  [31:2] FETCH_Instr_branch_target_a1;

// For |fetch/instr$commit.
wire FETCH_Instr_commit_a0;

// For |fetch/instr$conditional_branch.
wire FETCH_Instr_conditional_branch_a0;

// For |fetch/instr$dest_reg.
wire [4:0] FETCH_Instr_dest_reg_a0;

// For |fetch/instr$dest_reg_valid.
wire FETCH_Instr_dest_reg_valid_a0;

// For |fetch/instr$equal.
wire FETCH_Instr_equal_a0;

// For |fetch/instr$fetch.
wire FETCH_Instr_fetch_a0;

// For |fetch/instr$good_path.
wire FETCH_Instr_good_path_a0;

// For |fetch/instr$good_path_illegal.
wire FETCH_Instr_good_path_illegal_a0;

// For |fetch/instr$good_path_trap.
wire FETCH_Instr_good_path_trap_a0;
reg  FETCH_Instr_good_path_trap_a1,
     FETCH_Instr_good_path_trap_a2;

// For |fetch/instr$illegal.
wire FETCH_Instr_illegal_a0;

// For |fetch/instr$in_redirect_shadow.
wire FETCH_Instr_in_redirect_shadow_a0;

// For |fetch/instr$is___type.
wire FETCH_Instr_is___type_a0;

// For |fetch/instr$is_add_sub_instr.
wire FETCH_Instr_is_add_sub_instr_a0;

// For |fetch/instr$is_addi_instr.
wire FETCH_Instr_is_addi_instr_a0;

// For |fetch/instr$is_and_instr.
wire FETCH_Instr_is_and_instr_a0;

// For |fetch/instr$is_andi_instr.
wire FETCH_Instr_is_andi_instr_a0;

// For |fetch/instr$is_auipc_instr.
wire FETCH_Instr_is_auipc_instr_a0;

// For |fetch/instr$is_b_type.
wire FETCH_Instr_is_b_type_a0;

// For |fetch/instr$is_beq_instr.
wire FETCH_Instr_is_beq_instr_a0;

// For |fetch/instr$is_bge_instr.
wire FETCH_Instr_is_bge_instr_a0;

// For |fetch/instr$is_bgeu_instr.
wire FETCH_Instr_is_bgeu_instr_a0;

// For |fetch/instr$is_blt_instr.
wire FETCH_Instr_is_blt_instr_a0;

// For |fetch/instr$is_bltu_instr.
wire FETCH_Instr_is_bltu_instr_a0;

// For |fetch/instr$is_bne_instr.
wire FETCH_Instr_is_bne_instr_a0;

// For |fetch/instr$is_i_type.
wire FETCH_Instr_is_i_type_a0;

// For |fetch/instr$is_j_type.
wire FETCH_Instr_is_j_type_a0;

// For |fetch/instr$is_jal_instr.
wire FETCH_Instr_is_jal_instr_a0;

// For |fetch/instr$is_jalr_instr.
wire FETCH_Instr_is_jalr_instr_a0;

// For |fetch/instr$is_lb_instr.
wire FETCH_Instr_is_lb_instr_a0;

// For |fetch/instr$is_lbu_instr.
wire FETCH_Instr_is_lbu_instr_a0;

// For |fetch/instr$is_lh_instr.
wire FETCH_Instr_is_lh_instr_a0;

// For |fetch/instr$is_lhu_instr.
wire FETCH_Instr_is_lhu_instr_a0;

// For |fetch/instr$is_lui_instr.
wire FETCH_Instr_is_lui_instr_a0;

// For |fetch/instr$is_lw_instr.
wire FETCH_Instr_is_lw_instr_a0;

// For |fetch/instr$is_or_instr.
wire FETCH_Instr_is_or_instr_a0;

// For |fetch/instr$is_ori_instr.
wire FETCH_Instr_is_ori_instr_a0;

// For |fetch/instr$is_r4_type.
wire FETCH_Instr_is_r4_type_a0;

// For |fetch/instr$is_r_type.
wire FETCH_Instr_is_r_type_a0;

// For |fetch/instr$is_ri_type.
wire FETCH_Instr_is_ri_type_a0;

// For |fetch/instr$is_s_type.
wire FETCH_Instr_is_s_type_a0;

// For |fetch/instr$is_sb_instr.
wire FETCH_Instr_is_sb_instr_a0;

// For |fetch/instr$is_sh_instr.
wire FETCH_Instr_is_sh_instr_a0;

// For |fetch/instr$is_sll_instr.
wire FETCH_Instr_is_sll_instr_a0;

// For |fetch/instr$is_slli_instr.
wire FETCH_Instr_is_slli_instr_a0;

// For |fetch/instr$is_slt_instr.
wire FETCH_Instr_is_slt_instr_a0;

// For |fetch/instr$is_slti_instr.
wire FETCH_Instr_is_slti_instr_a0;

// For |fetch/instr$is_sltiu_instr.
wire FETCH_Instr_is_sltiu_instr_a0;

// For |fetch/instr$is_sltu_instr.
wire FETCH_Instr_is_sltu_instr_a0;

// For |fetch/instr$is_srl_sra_instr.
wire FETCH_Instr_is_srl_sra_instr_a0;

// For |fetch/instr$is_srli_srai_instr.
wire FETCH_Instr_is_srli_srai_instr_a0;

// For |fetch/instr$is_sw_instr.
wire FETCH_Instr_is_sw_instr_a0;

// For |fetch/instr$is_u_type.
wire FETCH_Instr_is_u_type_a0;

// For |fetch/instr$is_xor_instr.
wire FETCH_Instr_is_xor_instr_a0;

// For |fetch/instr$is_xori_instr.
wire FETCH_Instr_is_xori_instr_a0;

// For |fetch/instr$jal_rslt.
wire [31:0] FETCH_Instr_jal_rslt_a0;

// For |fetch/instr$jalr_rslt.
wire [31:0] FETCH_Instr_jalr_rslt_a0;

// For |fetch/instr$jump.
wire FETCH_Instr_jump_a0;

// For |fetch/instr$jump_target.
wire [31:2] FETCH_Instr_jump_target_a0;
reg  [31:2] FETCH_Instr_jump_target_a1;

// For |fetch/instr$lb_rslt.
wire [31:0] FETCH_Instr_lb_rslt_a0;

// For |fetch/instr$lbu_rslt.
wire [31:0] FETCH_Instr_lbu_rslt_a0;

// For |fetch/instr$ld.
wire FETCH_Instr_ld_a0;

// For |fetch/instr$ld_rslt.
wire [31:0] FETCH_Instr_ld_rslt_a0;

// For |fetch/instr$lh_rslt.
wire [31:0] FETCH_Instr_lh_rslt_a0;

// For |fetch/instr$lhu_rslt.
wire [31:0] FETCH_Instr_lhu_rslt_a0;

// For |fetch/instr$lui_rslt.
wire [31:0] FETCH_Instr_lui_rslt_a0;

// For |fetch/instr$lw_rslt.
wire [31:0] FETCH_Instr_lw_rslt_a0;

// For |fetch/instr$mispred_branch.
wire FETCH_Instr_mispred_branch_a0;

// For |fetch/instr$mnemonic.
wire [10*8-1:0] FETCH_Instr_mnemonic_a0;

// For |fetch/instr$or_rslt.
wire [31:0] FETCH_Instr_or_rslt_a0;

// For |fetch/instr$ori_rslt.
wire [31:0] FETCH_Instr_ori_rslt_a0;

// For |fetch/instr$pred_taken.
wire FETCH_Instr_pred_taken_a0;

// For |fetch/instr$raw.
wire [31:0] FETCH_Instr_raw_a0;

// For |fetch/instr$raw_aq.
wire FETCH_Instr_raw_aq_a0;

// For |fetch/instr$raw_b_imm.
wire [31:0] FETCH_Instr_raw_b_imm_a0;

// For |fetch/instr$raw_funct3.
wire [2:0] FETCH_Instr_raw_funct3_a0;

// For |fetch/instr$raw_funct7.
wire [6:0] FETCH_Instr_raw_funct7_a0;

// For |fetch/instr$raw_i_imm.
wire [31:0] FETCH_Instr_raw_i_imm_a0;

// For |fetch/instr$raw_op2.
wire [1:0] FETCH_Instr_raw_op2_a0;

// For |fetch/instr$raw_op5.
wire [4:0] FETCH_Instr_raw_op5_a0;

// For |fetch/instr$raw_rd.
wire [4:0] FETCH_Instr_raw_rd_a0;

// For |fetch/instr$raw_rl.
wire FETCH_Instr_raw_rl_a0;

// For |fetch/instr$raw_rm.
wire [2:0] FETCH_Instr_raw_rm_a0;

// For |fetch/instr$raw_rs1.
wire [4:0] FETCH_Instr_raw_rs1_a0;

// For |fetch/instr$raw_rs2.
wire [4:0] FETCH_Instr_raw_rs2_a0;

// For |fetch/instr$raw_rs3.
wire [4:0] FETCH_Instr_raw_rs3_a0;

// For |fetch/instr$raw_s_imm.
wire [31:0] FETCH_Instr_raw_s_imm_a0;

// For |fetch/instr$raw_shamt.
wire [6:0] FETCH_Instr_raw_shamt_a0;

// For |fetch/instr$raw_u_imm.
wire [31:0] FETCH_Instr_raw_u_imm_a0;

// For |fetch/instr$redirecting_squash.
wire FETCH_Instr_redirecting_squash_a0;

// For |fetch/instr$reg_write.
wire FETCH_Instr_reg_write_a0;

// For |fetch/instr$replay.
wire FETCH_Instr_replay_a0;
reg  FETCH_Instr_replay_a1;

// For |fetch/instr$reset.
wire FETCH_Instr_reset_a0;

// For |fetch/instr$retire.
wire FETCH_Instr_retire_a0;

// For |fetch/instr$returning_ld.
wire FETCH_Instr_returning_ld_a0;

// For |fetch/instr$returning_ld_data.
wire [31:0] FETCH_Instr_returning_ld_data_a0;

// For |fetch/instr$returning_ld_dest_reg.
wire [4:0] FETCH_Instr_returning_ld_dest_reg_a0;

// For |fetch/instr$rslt.
wire [31:0] FETCH_Instr_rslt_a0;

// For |fetch/instr$sll_rslt.
wire [31:0] FETCH_Instr_sll_rslt_a0;

// For |fetch/instr$slli_rslt.
wire [31:0] FETCH_Instr_slli_rslt_a0;

// For |fetch/instr$slt_rslt.
wire [31:0] FETCH_Instr_slt_rslt_a0;

// For |fetch/instr$slti_rslt.
wire [31:0] FETCH_Instr_slti_rslt_a0;

// For |fetch/instr$sltiu_rslt.
wire [31:0] FETCH_Instr_sltiu_rslt_a0;

// For |fetch/instr$sltu_rslt.
wire [31:0] FETCH_Instr_sltu_rslt_a0;

// For |fetch/instr$spec_ld.
wire FETCH_Instr_spec_ld_a0;

// For |fetch/instr$squash.
wire FETCH_Instr_squash_a0;

// For |fetch/instr$srl_sra_rslt.
wire [31:0] FETCH_Instr_srl_sra_rslt_a0;

// For |fetch/instr$srli_srai_rslt.
wire [31:0] FETCH_Instr_srli_srai_rslt_a0;

// For |fetch/instr$st.
wire FETCH_Instr_st_a0;

// For |fetch/instr$st_value.
wire [31:0] FETCH_Instr_st_value_a0;

// For |fetch/instr$taken.
wire FETCH_Instr_taken_a0;

// For |fetch/instr$trap.
wire FETCH_Instr_trap_a0;

// For |fetch/instr$valid_branch.
wire FETCH_Instr_valid_branch_a0;

// For |fetch/instr$valid_decode.
wire FETCH_Instr_valid_decode_a0;

// For |fetch/instr$valid_decode_branch.
wire FETCH_Instr_valid_decode_branch_a0;

// For |fetch/instr$valid_dest_reg_valid.
wire FETCH_Instr_valid_dest_reg_valid_a0;

// For |fetch/instr$valid_exe.
wire FETCH_Instr_valid_exe_a0;

// For |fetch/instr$valid_jump.
wire FETCH_Instr_valid_jump_a0;
reg  FETCH_Instr_valid_jump_a1;

// For |fetch/instr$valid_ld.
wire FETCH_Instr_valid_ld_a0;

// For |fetch/instr$valid_ld_st.
wire FETCH_Instr_valid_ld_st_a0;

// For |fetch/instr$valid_mispred_branch.
wire FETCH_Instr_valid_mispred_branch_a0;
reg  FETCH_Instr_valid_mispred_branch_a1;

// For |fetch/instr$valid_pred_taken_branch.
wire FETCH_Instr_valid_pred_taken_branch_a0;
reg  FETCH_Instr_valid_pred_taken_branch_a1;

// For |fetch/instr$valid_st.
wire FETCH_Instr_valid_st_a0;

// For |fetch/instr$xor_rslt.
wire [31:0] FETCH_Instr_xor_rslt_a0;

// For |fetch/instr$xori_rslt.
wire [31:0] FETCH_Instr_xori_rslt_a0;

// For |fetch/instr/mem$Word.
wire [31:0] FETCH_Instr_Mem_Word_n1 [31:0];
reg  [31:0] FETCH_Instr_Mem_Word_a0 [31:0];

// For |fetch/instr/regs$Value.
wire [31:0] FETCH_Instr_Regs_Value_n1 [31:1];
reg  [31:0] FETCH_Instr_Regs_Value_a0 [31:1];

// For |fetch/instr/regs$next_pending.
wire FETCH_Instr_Regs_next_pending_a0 [31:1];
reg  FETCH_Instr_Regs_next_pending_a1 [31:1];

// For |fetch/instr/src$replay.
wire [2:1] FETCH_Instr_Src_replay_a0;

// For |mem/data$dest_reg.
wire [4:0] MEM_Data_dest_reg_a0;
reg  [4:0] MEM_Data_dest_reg_a1;

// For |mem/data$ld_rslt.
wire [31:0] MEM_Data_ld_rslt_a0;
reg  [31:0] MEM_Data_ld_rslt_a1;

// For |mem/data$valid_ld.
wire MEM_Data_valid_ld_a0;
reg  MEM_Data_valid_ld_a1;


//
// Scope: |fetch
//

//
// Scope: |fetch/instr
//

// Clock signals.
reg  clkP_FETCH_Instr_valid_decode_branch_a1 ;
reg  clkP_FETCH_Instr_valid_jump_a1 ;


generate


   //
   // Scope: |fetch
   //


      //
      // Scope: /instr
      //

         // For $Pc.
         always @(posedge clk) FETCH_Instr_Pc_a0[31:2] <= FETCH_Instr_Pc_n1[31:2];
         always @(posedge clk) FETCH_Instr_Pc_a1[31:2] <= FETCH_Instr_Pc_a0[31:2];

         // For $RedirectShadowCnt.
         always @(posedge clk) FETCH_Instr_RedirectShadowCnt_a0[2:0] <= FETCH_Instr_RedirectShadowCnt_n1[2:0];

         // For $branch_target.
         always @(posedge clkP_FETCH_Instr_valid_decode_branch_a1) FETCH_Instr_branch_target_a1[31:2] <= FETCH_Instr_branch_target_a0[31:2];

         // For $good_path_trap.
         always @(posedge clk) FETCH_Instr_good_path_trap_a1 <= FETCH_Instr_good_path_trap_a0;
         always @(posedge clk) FETCH_Instr_good_path_trap_a2 <= FETCH_Instr_good_path_trap_a1;

         // For $jump_target.
         always @(posedge clkP_FETCH_Instr_valid_jump_a1) FETCH_Instr_jump_target_a1[31:2] <= FETCH_Instr_jump_target_a0[31:2];

         // For $replay.
         always @(posedge clk) FETCH_Instr_replay_a1 <= FETCH_Instr_replay_a0;

         // For $valid_jump.
         always @(posedge clk) FETCH_Instr_valid_jump_a1 <= FETCH_Instr_valid_jump_a0;

         // For $valid_mispred_branch.
         always @(posedge clk) FETCH_Instr_valid_mispred_branch_a1 <= FETCH_Instr_valid_mispred_branch_a0;

         // For $valid_pred_taken_branch.
         always @(posedge clk) FETCH_Instr_valid_pred_taken_branch_a1 <= FETCH_Instr_valid_pred_taken_branch_a0;


         //
         // Scope: /mem[31:0]
         //
         for (mem = 0; mem <= 31; mem++) begin : L1gen_FETCH_Instr_Mem
            // For $Word.
            always @(posedge clk) FETCH_Instr_Mem_Word_a0[mem][31:0] <= FETCH_Instr_Mem_Word_n1[mem][31:0];

         end

         //
         // Scope: /regs[31:1]
         //
         for (regs = 1; regs <= 31; regs++) begin : L1gen_FETCH_Instr_Regs
            // For $Value.
            always @(posedge clk) FETCH_Instr_Regs_Value_a0[regs][31:0] <= FETCH_Instr_Regs_Value_n1[regs][31:0];

            // For $next_pending.
            always @(posedge clk) FETCH_Instr_Regs_next_pending_a1[regs] <= FETCH_Instr_Regs_next_pending_a0[regs];

         end



   //
   // Scope: |mem
   //


      //
      // Scope: /data
      //

         // For $dest_reg.
         always @(posedge clk) MEM_Data_dest_reg_a1[4:0] <= MEM_Data_dest_reg_a0[4:0];

         // For $ld_rslt.
         always @(posedge clk) MEM_Data_ld_rslt_a1[31:0] <= MEM_Data_ld_rslt_a0[31:0];

         // For $valid_ld.
         always @(posedge clk) MEM_Data_valid_ld_a1 <= MEM_Data_valid_ld_a0;





endgenerate



//
// Gated clocks.
//

generate



   //
   // Scope: |fetch
   //


      //
      // Scope: /instr
      //

         clk_gate gen_clkP_FETCH_Instr_valid_decode_branch_a1(clkP_FETCH_Instr_valid_decode_branch_a1, clk, 1'b1, FETCH_Instr_valid_decode_branch_a0, 1'b0);
         clk_gate gen_clkP_FETCH_Instr_valid_jump_a1(clkP_FETCH_Instr_valid_jump_a1, clk, 1'b1, FETCH_Instr_valid_jump_a0, 1'b0);




endgenerate



generate   // This is awkward, but we need to go into 'generate' context in the line that `includes the declarations file.
