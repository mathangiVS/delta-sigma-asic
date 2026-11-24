/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Sun Dec  7 12:35:37 2025
/////////////////////////////////////////////////////////////


module demodulator ( clk, rst, en, din, dout );
  output [1:0] dout;
  input clk, rst, en, din;
  wire   ps, n2, n3;

  XOR2M2RA U3 ( .A(ps), .B(en), .Z(n2) );
  DFQRM2RA ps_reg ( .D(n2), .CK(clk), .RB(n3), .Q(ps) );
  AN2M2R U2 ( .A(din), .B(ps), .Z(dout[1]) );
  INVM2R U4 ( .A(rst), .Z(n3) );
  BUFM2R U5 ( .A(din), .Z(dout[0]) );
endmodule


module integrator_IW20_OW20_1_DW01_add_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADFM2RA U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADFM2RA U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADFM2RA U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADFM2RA U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADFM2RA U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADFM2RA U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADFM2RA U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADFM2RA U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADFM2RA U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADFM2RA U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADFM2RA U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADFM2RA U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADFM2RA U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2RA U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2RA U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2RA U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2RA U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2RA U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3M2RA U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Z(SUM[19]) );
  AN2M2R U1 ( .A(B[0]), .B(A[0]), .Z(n1) );
  XOR2M2RA U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module integrator_IW20_OW20_1 ( clk, rst, en, input_data, output_data, 
        out_ready );
  input [19:0] input_data;
  output [19:0] output_data;
  input clk, rst, en;
  output out_ready;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n1, n22;

  integrator_IW20_OW20_1_DW01_add_0_DW01_add_1 add_78 ( .A(output_data), .B(
        input_data), .CI(1'b0), .SUM({N21, N20, N19, N18, N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  DFQRM2RA \acc_reg[19]  ( .D(n2), .CK(clk), .RB(n1), .Q(output_data[19]) );
  DFQRM2RA \acc_reg[18]  ( .D(n3), .CK(clk), .RB(n1), .Q(output_data[18]) );
  DFQRM2RA \acc_reg[17]  ( .D(n4), .CK(clk), .RB(n1), .Q(output_data[17]) );
  DFQRM2RA \acc_reg[16]  ( .D(n5), .CK(clk), .RB(n1), .Q(output_data[16]) );
  DFQRM2RA \acc_reg[15]  ( .D(n6), .CK(clk), .RB(n1), .Q(output_data[15]) );
  DFQRM2RA \acc_reg[14]  ( .D(n7), .CK(clk), .RB(n1), .Q(output_data[14]) );
  DFQRM2RA \acc_reg[13]  ( .D(n8), .CK(clk), .RB(n1), .Q(output_data[13]) );
  DFQRM2RA \acc_reg[12]  ( .D(n9), .CK(clk), .RB(n1), .Q(output_data[12]) );
  DFQRM2RA \acc_reg[11]  ( .D(n10), .CK(clk), .RB(n1), .Q(output_data[11]) );
  DFQRM2RA \acc_reg[10]  ( .D(n11), .CK(clk), .RB(n1), .Q(output_data[10]) );
  DFQRM2RA \acc_reg[9]  ( .D(n12), .CK(clk), .RB(n1), .Q(output_data[9]) );
  DFQRM2RA \acc_reg[8]  ( .D(n13), .CK(clk), .RB(n1), .Q(output_data[8]) );
  DFQRM2RA \acc_reg[7]  ( .D(n14), .CK(clk), .RB(n1), .Q(output_data[7]) );
  DFQRM2RA \acc_reg[6]  ( .D(n15), .CK(clk), .RB(n1), .Q(output_data[6]) );
  DFQRM2RA \acc_reg[5]  ( .D(n16), .CK(clk), .RB(n1), .Q(output_data[5]) );
  DFQRM2RA \acc_reg[4]  ( .D(n17), .CK(clk), .RB(n1), .Q(output_data[4]) );
  DFQRM2RA \acc_reg[3]  ( .D(n18), .CK(clk), .RB(n1), .Q(output_data[3]) );
  DFQRM2RA \acc_reg[2]  ( .D(n19), .CK(clk), .RB(n1), .Q(output_data[2]) );
  DFQRM2RA \acc_reg[1]  ( .D(n20), .CK(clk), .RB(n1), .Q(output_data[1]) );
  DFQRM2RA \acc_reg[0]  ( .D(n21), .CK(clk), .RB(n1), .Q(output_data[0]) );
  DFQRM2RA out_ready_reg ( .D(en), .CK(clk), .RB(n1), .Q(out_ready) );
  AO22M1RA U3 ( .A1(output_data[19]), .A2(n22), .B1(N21), .B2(en), .Z(n2) );
  AO22M1RA U4 ( .A1(output_data[18]), .A2(n22), .B1(N20), .B2(en), .Z(n3) );
  AO22M1RA U5 ( .A1(output_data[17]), .A2(n22), .B1(N19), .B2(en), .Z(n4) );
  AO22M1RA U6 ( .A1(output_data[16]), .A2(n22), .B1(N18), .B2(en), .Z(n5) );
  AO22M1RA U7 ( .A1(output_data[15]), .A2(n22), .B1(N17), .B2(en), .Z(n6) );
  AO22M1RA U8 ( .A1(output_data[14]), .A2(n22), .B1(N16), .B2(en), .Z(n7) );
  AO22M1RA U9 ( .A1(output_data[13]), .A2(n22), .B1(N15), .B2(en), .Z(n8) );
  AO22M1RA U10 ( .A1(output_data[12]), .A2(n22), .B1(N14), .B2(en), .Z(n9) );
  AO22M1RA U11 ( .A1(output_data[11]), .A2(n22), .B1(N13), .B2(en), .Z(n10) );
  AO22M1RA U12 ( .A1(output_data[10]), .A2(n22), .B1(N12), .B2(en), .Z(n11) );
  AO22M1RA U13 ( .A1(output_data[9]), .A2(n22), .B1(N11), .B2(en), .Z(n12) );
  AO22M1RA U14 ( .A1(output_data[8]), .A2(n22), .B1(N10), .B2(en), .Z(n13) );
  AO22M1RA U15 ( .A1(output_data[7]), .A2(n22), .B1(N9), .B2(en), .Z(n14) );
  AO22M1RA U16 ( .A1(output_data[6]), .A2(n22), .B1(N8), .B2(en), .Z(n15) );
  AO22M1RA U17 ( .A1(output_data[5]), .A2(n22), .B1(N7), .B2(en), .Z(n16) );
  AO22M1RA U18 ( .A1(output_data[4]), .A2(n22), .B1(N6), .B2(en), .Z(n17) );
  AO22M1RA U19 ( .A1(output_data[3]), .A2(n22), .B1(en), .B2(N5), .Z(n18) );
  AO22M1RA U20 ( .A1(output_data[2]), .A2(n22), .B1(N4), .B2(en), .Z(n19) );
  AO22M1RA U21 ( .A1(output_data[1]), .A2(n22), .B1(N3), .B2(en), .Z(n20) );
  AO22M1RA U22 ( .A1(output_data[0]), .A2(n22), .B1(N2), .B2(en), .Z(n21) );
  INVM2R U23 ( .A(en), .Z(n22) );
  INVM2R U24 ( .A(rst), .Z(n1) );
endmodule


module integrator_IW20_OW20_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADFM2RA U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADFM2RA U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADFM2RA U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADFM2RA U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADFM2RA U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADFM2RA U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADFM2RA U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADFM2RA U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADFM2RA U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADFM2RA U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADFM2RA U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADFM2RA U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADFM2RA U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2RA U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2RA U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2RA U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2RA U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2RA U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3M2RA U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Z(SUM[19]) );
  AN2M2R U1 ( .A(B[0]), .B(A[0]), .Z(n1) );
  XOR2M2RA U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module integrator_IW20_OW20_0 ( clk, rst, en, input_data, output_data, 
        out_ready );
  input [19:0] input_data;
  output [19:0] output_data;
  input clk, rst, en;
  output out_ready;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, n1, n22, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;

  integrator_IW20_OW20_0_DW01_add_0 add_78 ( .A(output_data), .B(input_data), 
        .CI(1'b0), .SUM({N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  DFQRM2RA \acc_reg[19]  ( .D(n44), .CK(clk), .RB(n22), .Q(output_data[19]) );
  DFQRM2RA out_ready_reg ( .D(en), .CK(clk), .RB(n22), .Q(out_ready) );
  DFQRM2RA \acc_reg[18]  ( .D(n43), .CK(clk), .RB(n22), .Q(output_data[18]) );
  DFQRM2RA \acc_reg[17]  ( .D(n42), .CK(clk), .RB(n22), .Q(output_data[17]) );
  DFQRM2RA \acc_reg[16]  ( .D(n41), .CK(clk), .RB(n22), .Q(output_data[16]) );
  DFQRM2RA \acc_reg[15]  ( .D(n40), .CK(clk), .RB(n22), .Q(output_data[15]) );
  DFQRM2RA \acc_reg[14]  ( .D(n39), .CK(clk), .RB(n22), .Q(output_data[14]) );
  DFQRM2RA \acc_reg[13]  ( .D(n38), .CK(clk), .RB(n22), .Q(output_data[13]) );
  DFQRM2RA \acc_reg[12]  ( .D(n37), .CK(clk), .RB(n22), .Q(output_data[12]) );
  DFQRM2RA \acc_reg[11]  ( .D(n36), .CK(clk), .RB(n22), .Q(output_data[11]) );
  DFQRM2RA \acc_reg[10]  ( .D(n35), .CK(clk), .RB(n22), .Q(output_data[10]) );
  DFQRM2RA \acc_reg[9]  ( .D(n34), .CK(clk), .RB(n22), .Q(output_data[9]) );
  DFQRM2RA \acc_reg[8]  ( .D(n33), .CK(clk), .RB(n22), .Q(output_data[8]) );
  DFQRM2RA \acc_reg[7]  ( .D(n32), .CK(clk), .RB(n22), .Q(output_data[7]) );
  DFQRM2RA \acc_reg[6]  ( .D(n31), .CK(clk), .RB(n22), .Q(output_data[6]) );
  DFQRM2RA \acc_reg[5]  ( .D(n30), .CK(clk), .RB(n22), .Q(output_data[5]) );
  DFQRM2RA \acc_reg[4]  ( .D(n29), .CK(clk), .RB(n22), .Q(output_data[4]) );
  DFQRM2RA \acc_reg[3]  ( .D(n28), .CK(clk), .RB(n22), .Q(output_data[3]) );
  DFQRM2RA \acc_reg[2]  ( .D(n27), .CK(clk), .RB(n22), .Q(output_data[2]) );
  DFQRM2RA \acc_reg[1]  ( .D(n26), .CK(clk), .RB(n22), .Q(output_data[1]) );
  DFQRM2RA \acc_reg[0]  ( .D(n25), .CK(clk), .RB(n22), .Q(output_data[0]) );
  AO22M1RA U3 ( .A1(output_data[19]), .A2(n1), .B1(N21), .B2(en), .Z(n44) );
  AO22M1RA U4 ( .A1(output_data[18]), .A2(n1), .B1(N20), .B2(en), .Z(n43) );
  AO22M1RA U5 ( .A1(output_data[17]), .A2(n1), .B1(N19), .B2(en), .Z(n42) );
  AO22M1RA U6 ( .A1(output_data[16]), .A2(n1), .B1(N18), .B2(en), .Z(n41) );
  AO22M1RA U7 ( .A1(output_data[15]), .A2(n1), .B1(N17), .B2(en), .Z(n40) );
  AO22M1RA U8 ( .A1(output_data[14]), .A2(n1), .B1(N16), .B2(en), .Z(n39) );
  AO22M1RA U9 ( .A1(output_data[13]), .A2(n1), .B1(N15), .B2(en), .Z(n38) );
  AO22M1RA U10 ( .A1(output_data[12]), .A2(n1), .B1(N14), .B2(en), .Z(n37) );
  AO22M1RA U11 ( .A1(output_data[11]), .A2(n1), .B1(N13), .B2(en), .Z(n36) );
  AO22M1RA U12 ( .A1(output_data[10]), .A2(n1), .B1(N12), .B2(en), .Z(n35) );
  AO22M1RA U13 ( .A1(output_data[9]), .A2(n1), .B1(N11), .B2(en), .Z(n34) );
  AO22M1RA U14 ( .A1(output_data[8]), .A2(n1), .B1(N10), .B2(en), .Z(n33) );
  AO22M1RA U15 ( .A1(output_data[7]), .A2(n1), .B1(N9), .B2(en), .Z(n32) );
  AO22M1RA U16 ( .A1(output_data[6]), .A2(n1), .B1(N8), .B2(en), .Z(n31) );
  AO22M1RA U17 ( .A1(output_data[5]), .A2(n1), .B1(N7), .B2(en), .Z(n30) );
  AO22M1RA U18 ( .A1(output_data[4]), .A2(n1), .B1(N6), .B2(en), .Z(n29) );
  AO22M1RA U19 ( .A1(output_data[3]), .A2(n1), .B1(en), .B2(N5), .Z(n28) );
  AO22M1RA U20 ( .A1(output_data[2]), .A2(n1), .B1(N4), .B2(en), .Z(n27) );
  AO22M1RA U21 ( .A1(output_data[1]), .A2(n1), .B1(N3), .B2(en), .Z(n26) );
  INVM2R U22 ( .A(en), .Z(n1) );
  AO22M1RA U23 ( .A1(output_data[0]), .A2(n1), .B1(N2), .B2(en), .Z(n25) );
  INVM2R U24 ( .A(rst), .Z(n22) );
endmodule


module all_integrators_IW2_OW20_N2 ( clk, rst, en, din, dout, out_ready );
  input [1:0] din;
  output [19:0] dout;
  input clk, rst, en;
  output out_ready;
  wire   \stage[1][19] , \stage[1][18] , \stage[1][17] , \stage[1][16] ,
         \stage[1][15] , \stage[1][14] , \stage[1][13] , \stage[1][12] ,
         \stage[1][11] , \stage[1][10] , \stage[1][9] , \stage[1][8] ,
         \stage[1][7] , \stage[1][6] , \stage[1][5] , \stage[1][4] ,
         \stage[1][3] , \stage[1][2] , \stage[1][1] , \stage[1][0] ,
         \out_ready_temp[1] , n1;

  integrator_IW20_OW20_1 \integrator_gen[0].integrator  ( .clk(clk), .rst(rst), 
        .en(en), .input_data({n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, 
        n1, n1, n1, n1, n1, n1, n1, din[0]}), .output_data({\stage[1][19] , 
        \stage[1][18] , \stage[1][17] , \stage[1][16] , \stage[1][15] , 
        \stage[1][14] , \stage[1][13] , \stage[1][12] , \stage[1][11] , 
        \stage[1][10] , \stage[1][9] , \stage[1][8] , \stage[1][7] , 
        \stage[1][6] , \stage[1][5] , \stage[1][4] , \stage[1][3] , 
        \stage[1][2] , \stage[1][1] , \stage[1][0] }), .out_ready(
        \out_ready_temp[1] ) );
  integrator_IW20_OW20_0 \integrator_gen[1].integrator  ( .clk(clk), .rst(rst), 
        .en(\out_ready_temp[1] ), .input_data({\stage[1][19] , \stage[1][18] , 
        \stage[1][17] , \stage[1][16] , \stage[1][15] , \stage[1][14] , 
        \stage[1][13] , \stage[1][12] , \stage[1][11] , \stage[1][10] , 
        \stage[1][9] , \stage[1][8] , \stage[1][7] , \stage[1][6] , 
        \stage[1][5] , \stage[1][4] , \stage[1][3] , \stage[1][2] , 
        \stage[1][1] , \stage[1][0] }), .output_data(dout), .out_ready(
        out_ready) );
  BUFM4R U1 ( .A(din[1]), .Z(n1) );
endmodule


module downsampler_W20_DECIMATION_FACTOR1024_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADHM1RA U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADHM1RA U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADHM1RA U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADHM1RA U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADHM1RA U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADHM1RA U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADHM1RA U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADHM1RA U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CKXOR2M1RA U1 ( .A(carry[9]), .B(A[9]), .Z(SUM[9]) );
  CKINVM1R U2 ( .A(A[0]), .Z(SUM[0]) );
endmodule


module downsampler_W20_DECIMATION_FACTOR1024 ( clk, rst, en, input_data, 
        output_data, out_ready );
  input [19:0] input_data;
  output [19:0] output_data;
  input clk, rst, en;
  output out_ready;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, n1, n8, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n2, n3, n4, n5, n6, n7, n9, n22, n45, n46;
  wire   [9:0] counter;

  downsampler_W20_DECIMATION_FACTOR1024_DW01_inc_0 add_174 ( .A(counter), 
        .SUM({N17, N16, N15, N14, N13, N12, N11, N10, N9, N8}) );
  DFQRM2RA \out_reg[19]  ( .D(n44), .CK(clk), .RB(n3), .Q(output_data[19]) );
  DFQRM2RA out_ready_reg ( .D(n2), .CK(clk), .RB(n46), .Q(out_ready) );
  DFQRM2RA \out_reg[18]  ( .D(n25), .CK(clk), .RB(n46), .Q(output_data[18]) );
  DFQRM2RA \counter_reg[9]  ( .D(n13), .CK(clk), .RB(n3), .Q(counter[9]) );
  DFQRM2RA \out_reg[17]  ( .D(n26), .CK(clk), .RB(n46), .Q(output_data[17]) );
  DFQRM2RA \counter_reg[8]  ( .D(n14), .CK(clk), .RB(n3), .Q(counter[8]) );
  DFQRM2RA \out_reg[16]  ( .D(n27), .CK(clk), .RB(n46), .Q(output_data[16]) );
  DFQRM2RA \counter_reg[6]  ( .D(n16), .CK(clk), .RB(n3), .Q(counter[6]) );
  DFQRM2RA \counter_reg[5]  ( .D(n17), .CK(clk), .RB(n3), .Q(counter[5]) );
  DFQRM2RA \counter_reg[7]  ( .D(n15), .CK(clk), .RB(n3), .Q(counter[7]) );
  DFQRM2RA \counter_reg[4]  ( .D(n18), .CK(clk), .RB(n3), .Q(counter[4]) );
  DFQRM2RA \counter_reg[3]  ( .D(n19), .CK(clk), .RB(n3), .Q(counter[3]) );
  DFQRM2RA \out_reg[15]  ( .D(n28), .CK(clk), .RB(n46), .Q(output_data[15]) );
  DFQRM2RA \counter_reg[2]  ( .D(n20), .CK(clk), .RB(n3), .Q(counter[2]) );
  DFQRM2RA \counter_reg[1]  ( .D(n21), .CK(clk), .RB(n3), .Q(counter[1]) );
  DFQRM2RA \counter_reg[0]  ( .D(n23), .CK(clk), .RB(n46), .Q(counter[0]) );
  DFQRM2RA \out_reg[14]  ( .D(n29), .CK(clk), .RB(n46), .Q(output_data[14]) );
  DFQRM2RA \out_reg[13]  ( .D(n30), .CK(clk), .RB(n46), .Q(output_data[13]) );
  DFQRM2RA \out_reg[12]  ( .D(n31), .CK(clk), .RB(n46), .Q(output_data[12]) );
  DFQRM2RA \out_reg[11]  ( .D(n32), .CK(clk), .RB(n46), .Q(output_data[11]) );
  DFQRM2RA \out_reg[10]  ( .D(n33), .CK(clk), .RB(n46), .Q(output_data[10]) );
  DFQRM2RA \out_reg[9]  ( .D(n34), .CK(clk), .RB(n46), .Q(output_data[9]) );
  DFQRM2RA \out_reg[8]  ( .D(n35), .CK(clk), .RB(n46), .Q(output_data[8]) );
  DFQRM2RA \out_reg[7]  ( .D(n36), .CK(clk), .RB(n46), .Q(output_data[7]) );
  DFQRM2RA \out_reg[6]  ( .D(n37), .CK(clk), .RB(n46), .Q(output_data[6]) );
  DFQRM2RA \out_reg[5]  ( .D(n38), .CK(clk), .RB(n46), .Q(output_data[5]) );
  DFQRM2RA \out_reg[4]  ( .D(n39), .CK(clk), .RB(n46), .Q(output_data[4]) );
  DFQRM2RA \out_reg[3]  ( .D(n40), .CK(clk), .RB(n46), .Q(output_data[3]) );
  DFQRM2RA \out_reg[2]  ( .D(n41), .CK(clk), .RB(n46), .Q(output_data[2]) );
  DFQRM2RA \out_reg[1]  ( .D(n42), .CK(clk), .RB(n3), .Q(output_data[1]) );
  DFQRM2RA \out_reg[0]  ( .D(n43), .CK(clk), .RB(n3), .Q(output_data[0]) );
  INVM2R U3 ( .A(n24), .Z(n4) );
  BUFM2R U4 ( .A(n46), .Z(n3) );
  AO22B10M2R U5 ( .B1(N17), .B2(n1), .A1(counter[9]), .NA2(en), .Z(n13) );
  AO22B10M2R U6 ( .B1(N16), .B2(n1), .A1(counter[8]), .NA2(en), .Z(n14) );
  ND4M2R U7 ( .A(counter[9]), .B(counter[8]), .C(n10), .D(n11), .Z(n8) );
  NR3M2R U8 ( .A(n45), .B(n9), .C(n22), .Z(n10) );
  NR4M1R U9 ( .A(n12), .B(n7), .C(n5), .D(n6), .Z(n11) );
  ND2M2R U10 ( .A(counter[4]), .B(counter[3]), .Z(n12) );
  NR2B1M2R U11 ( .NA(en), .B(n8), .Z(n24) );
  AO22M1RA U12 ( .A1(output_data[19]), .A2(n4), .B1(input_data[19]), .B2(n2), 
        .Z(n44) );
  AO22M1RA U13 ( .A1(output_data[0]), .A2(n4), .B1(input_data[0]), .B2(n24), 
        .Z(n43) );
  AO22M1RA U14 ( .A1(output_data[1]), .A2(n4), .B1(input_data[1]), .B2(n2), 
        .Z(n42) );
  AO22M1RA U15 ( .A1(output_data[2]), .A2(n4), .B1(input_data[2]), .B2(n24), 
        .Z(n41) );
  AO22M1RA U16 ( .A1(output_data[3]), .A2(n4), .B1(input_data[3]), .B2(n2), 
        .Z(n40) );
  AO22M1RA U17 ( .A1(output_data[4]), .A2(n4), .B1(input_data[4]), .B2(n24), 
        .Z(n39) );
  AO22M1RA U18 ( .A1(output_data[5]), .A2(n4), .B1(input_data[5]), .B2(n2), 
        .Z(n38) );
  AO22M1RA U19 ( .A1(output_data[6]), .A2(n4), .B1(input_data[6]), .B2(n24), 
        .Z(n37) );
  AO22M1RA U20 ( .A1(output_data[7]), .A2(n4), .B1(input_data[7]), .B2(n2), 
        .Z(n36) );
  AO22M1RA U21 ( .A1(output_data[8]), .A2(n4), .B1(input_data[8]), .B2(n24), 
        .Z(n35) );
  AO22M1RA U22 ( .A1(output_data[9]), .A2(n4), .B1(input_data[9]), .B2(n2), 
        .Z(n34) );
  AO22M1RA U23 ( .A1(output_data[10]), .A2(n4), .B1(input_data[10]), .B2(n24), 
        .Z(n33) );
  AO22M1RA U24 ( .A1(output_data[11]), .A2(n4), .B1(input_data[11]), .B2(n2), 
        .Z(n32) );
  AO22M1RA U25 ( .A1(output_data[12]), .A2(n4), .B1(input_data[12]), .B2(n24), 
        .Z(n31) );
  AO22M1RA U26 ( .A1(output_data[13]), .A2(n4), .B1(input_data[13]), .B2(n2), 
        .Z(n30) );
  AO22M1RA U27 ( .A1(output_data[14]), .A2(n4), .B1(input_data[14]), .B2(n2), 
        .Z(n29) );
  AO22M1RA U28 ( .A1(output_data[15]), .A2(n4), .B1(input_data[15]), .B2(n2), 
        .Z(n28) );
  AO22M1RA U29 ( .A1(output_data[16]), .A2(n4), .B1(input_data[16]), .B2(n2), 
        .Z(n27) );
  AO22M1RA U30 ( .A1(output_data[17]), .A2(n4), .B1(input_data[17]), .B2(n2), 
        .Z(n26) );
  AO22M1RA U31 ( .A1(output_data[18]), .A2(n4), .B1(input_data[18]), .B2(n2), 
        .Z(n25) );
  INVM2R U32 ( .A(counter[2]), .Z(n7) );
  MOAI22M2RA U33 ( .A1(en), .A2(n45), .B1(N15), .B2(n1), .Z(n15) );
  INVM2R U34 ( .A(counter[0]), .Z(n5) );
  INVM2R U35 ( .A(counter[7]), .Z(n45) );
  INVM2R U36 ( .A(counter[5]), .Z(n9) );
  INVM2R U37 ( .A(counter[6]), .Z(n22) );
  NR2B1M2R U38 ( .NA(en), .B(n8), .Z(n2) );
  MOAI22M2RA U39 ( .A1(en), .A2(n22), .B1(N14), .B2(n1), .Z(n16) );
  MOAI22M2RA U40 ( .A1(en), .A2(n9), .B1(N13), .B2(n1), .Z(n17) );
  MOAI22M2RA U41 ( .A1(en), .A2(n7), .B1(N10), .B2(n1), .Z(n20) );
  MOAI22M2RA U42 ( .A1(en), .A2(n6), .B1(N9), .B2(n1), .Z(n21) );
  MOAI22M2RA U43 ( .A1(en), .A2(n5), .B1(N8), .B2(n1), .Z(n23) );
  AN2M2R U44 ( .A(en), .B(n8), .Z(n1) );
  INVM2R U45 ( .A(counter[1]), .Z(n6) );
  AO22B10M2R U46 ( .B1(N12), .B2(n1), .A1(counter[4]), .NA2(en), .Z(n18) );
  AO22B10M2R U47 ( .B1(N11), .B2(n1), .A1(counter[3]), .NA2(en), .Z(n19) );
  INVM2R U48 ( .A(rst), .Z(n46) );
endmodule


module comb_IW20_OW20_1_DW01_sub_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [20:0] carry;

  ADFM2RA U2_18 ( .A(A[18]), .B(n3), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADFM2RA U2_17 ( .A(A[17]), .B(n4), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADFM2RA U2_16 ( .A(A[16]), .B(n5), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADFM2RA U2_15 ( .A(A[15]), .B(n6), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADFM2RA U2_14 ( .A(A[14]), .B(n7), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADFM2RA U2_13 ( .A(A[13]), .B(n8), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADFM2RA U2_12 ( .A(A[12]), .B(n9), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADFM2RA U2_11 ( .A(A[11]), .B(n10), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADFM2RA U2_10 ( .A(A[10]), .B(n11), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADFM2RA U2_9 ( .A(A[9]), .B(n12), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADFM2RA U2_8 ( .A(A[8]), .B(n13), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADFM2RA U2_7 ( .A(A[7]), .B(n14), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADFM2RA U2_6 ( .A(A[6]), .B(n15), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADFM2RA U2_5 ( .A(A[5]), .B(n16), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADFM2RA U2_4 ( .A(A[4]), .B(n17), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADFM2RA U2_3 ( .A(A[3]), .B(n18), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADFM2RA U2_2 ( .A(A[2]), .B(n19), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADFM2RA U2_1 ( .A(A[1]), .B(n20), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3M2RA U2_19 ( .A(A[19]), .B(n2), .C(carry[19]), .Z(DIFF[19]) );
  INVM2R U1 ( .A(B[2]), .Z(n19) );
  INVM2R U2 ( .A(B[3]), .Z(n18) );
  INVM2R U3 ( .A(B[4]), .Z(n17) );
  INVM2R U4 ( .A(B[5]), .Z(n16) );
  INVM2R U5 ( .A(B[6]), .Z(n15) );
  INVM2R U6 ( .A(B[7]), .Z(n14) );
  INVM2R U7 ( .A(B[8]), .Z(n13) );
  INVM2R U8 ( .A(B[9]), .Z(n12) );
  INVM2R U9 ( .A(B[10]), .Z(n11) );
  INVM2R U10 ( .A(B[11]), .Z(n10) );
  INVM2R U11 ( .A(B[12]), .Z(n9) );
  INVM2R U12 ( .A(B[13]), .Z(n8) );
  INVM2R U13 ( .A(B[14]), .Z(n7) );
  INVM2R U14 ( .A(B[17]), .Z(n4) );
  INVM2R U15 ( .A(B[1]), .Z(n20) );
  ND2M2R U16 ( .A(B[0]), .B(n1), .Z(carry[1]) );
  INVM2R U17 ( .A(B[15]), .Z(n6) );
  INVM2R U18 ( .A(B[16]), .Z(n5) );
  INVM2R U19 ( .A(B[18]), .Z(n3) );
  INVM2R U20 ( .A(A[0]), .Z(n1) );
  INVM2R U21 ( .A(B[19]), .Z(n2) );
  INVM2R U22 ( .A(B[0]), .Z(n21) );
  XOR2M2RA U23 ( .A(n1), .B(n21), .Z(DIFF[0]) );
endmodule


module comb_IW20_OW20_1 ( clk, rst, en, input_data, output_data, out_ready );
  input [19:0] input_data;
  output [19:0] output_data;
  input clk, rst, en;
  output out_ready;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N64, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n2, n26, n27;
  wire   [19:0] input_delayed;

  comb_IW20_OW20_1_DW01_sub_0_DW01_sub_1 sub_277 ( .A(input_data), .B(
        input_delayed), .CI(1'b0), .DIFF({N23, N22, N21, N20, N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4}) );
  DFQM2RA \output_data_temp_reg[19]  ( .D(n6), .CK(clk), .Q(output_data[19])
         );
  DFQM2RA \input_delayed_reg[19]  ( .D(N43), .CK(clk), .Q(input_delayed[19])
         );
  DFQM2RA out_ready_reg ( .D(N64), .CK(clk), .Q(out_ready) );
  DFQM2RA \output_data_temp_reg[18]  ( .D(n7), .CK(clk), .Q(output_data[18])
         );
  DFQM2RA \input_delayed_reg[18]  ( .D(N42), .CK(clk), .Q(input_delayed[18])
         );
  DFQM2RA \output_data_temp_reg[17]  ( .D(n8), .CK(clk), .Q(output_data[17])
         );
  DFQM2RA \input_delayed_reg[17]  ( .D(N41), .CK(clk), .Q(input_delayed[17])
         );
  DFQM2RA \input_delayed_reg[16]  ( .D(N40), .CK(clk), .Q(input_delayed[16])
         );
  DFQM2RA \output_data_temp_reg[16]  ( .D(n9), .CK(clk), .Q(output_data[16])
         );
  DFQM2RA \input_delayed_reg[15]  ( .D(N39), .CK(clk), .Q(input_delayed[15])
         );
  DFQM2RA \output_data_temp_reg[15]  ( .D(n10), .CK(clk), .Q(output_data[15])
         );
  DFQM2RA \input_delayed_reg[14]  ( .D(N38), .CK(clk), .Q(input_delayed[14])
         );
  DFQM2RA \output_data_temp_reg[14]  ( .D(n11), .CK(clk), .Q(output_data[14])
         );
  DFQM2RA \input_delayed_reg[13]  ( .D(N37), .CK(clk), .Q(input_delayed[13])
         );
  DFQM2RA \output_data_temp_reg[13]  ( .D(n12), .CK(clk), .Q(output_data[13])
         );
  DFQM2RA \input_delayed_reg[12]  ( .D(N36), .CK(clk), .Q(input_delayed[12])
         );
  DFQM2RA \output_data_temp_reg[12]  ( .D(n13), .CK(clk), .Q(output_data[12])
         );
  DFQM2RA \input_delayed_reg[11]  ( .D(N35), .CK(clk), .Q(input_delayed[11])
         );
  DFQM2RA \output_data_temp_reg[11]  ( .D(n14), .CK(clk), .Q(output_data[11])
         );
  DFQM2RA \input_delayed_reg[10]  ( .D(N34), .CK(clk), .Q(input_delayed[10])
         );
  DFQM2RA \output_data_temp_reg[10]  ( .D(n15), .CK(clk), .Q(output_data[10])
         );
  DFQM2RA \input_delayed_reg[9]  ( .D(N33), .CK(clk), .Q(input_delayed[9]) );
  DFQM2RA \output_data_temp_reg[9]  ( .D(n16), .CK(clk), .Q(output_data[9]) );
  DFQM2RA \input_delayed_reg[8]  ( .D(N32), .CK(clk), .Q(input_delayed[8]) );
  DFQM2RA \output_data_temp_reg[8]  ( .D(n17), .CK(clk), .Q(output_data[8]) );
  DFQM2RA \input_delayed_reg[7]  ( .D(N31), .CK(clk), .Q(input_delayed[7]) );
  DFQM2RA \output_data_temp_reg[7]  ( .D(n18), .CK(clk), .Q(output_data[7]) );
  DFQM2RA \input_delayed_reg[6]  ( .D(N30), .CK(clk), .Q(input_delayed[6]) );
  DFQM2RA \output_data_temp_reg[6]  ( .D(n19), .CK(clk), .Q(output_data[6]) );
  DFQM2RA \input_delayed_reg[5]  ( .D(N29), .CK(clk), .Q(input_delayed[5]) );
  DFQM2RA \output_data_temp_reg[5]  ( .D(n20), .CK(clk), .Q(output_data[5]) );
  DFQM2RA \input_delayed_reg[4]  ( .D(N28), .CK(clk), .Q(input_delayed[4]) );
  DFQM2RA \output_data_temp_reg[4]  ( .D(n21), .CK(clk), .Q(output_data[4]) );
  DFQM2RA \input_delayed_reg[3]  ( .D(N27), .CK(clk), .Q(input_delayed[3]) );
  DFQM2RA \output_data_temp_reg[3]  ( .D(n22), .CK(clk), .Q(output_data[3]) );
  DFQM2RA \input_delayed_reg[2]  ( .D(N26), .CK(clk), .Q(input_delayed[2]) );
  DFQM2RA \output_data_temp_reg[2]  ( .D(n23), .CK(clk), .Q(output_data[2]) );
  DFQM2RA \input_delayed_reg[1]  ( .D(N25), .CK(clk), .Q(input_delayed[1]) );
  DFQM2RA \output_data_temp_reg[1]  ( .D(n24), .CK(clk), .Q(output_data[1]) );
  DFQM2RA \input_delayed_reg[0]  ( .D(N24), .CK(clk), .Q(input_delayed[0]) );
  DFQM2RA \output_data_temp_reg[0]  ( .D(n25), .CK(clk), .Q(output_data[0]) );
  NR2M2R U3 ( .A(n26), .B(rst), .Z(n4) );
  OR2M2R U5 ( .A(N64), .B(n3), .Z(n27) );
  OR2M2R U6 ( .A(N64), .B(n2), .Z(n5) );
  AO22M1RA U7 ( .A1(output_data[19]), .A2(n26), .B1(N23), .B2(n4), .Z(n6) );
  AO22M1RA U8 ( .A1(output_data[18]), .A2(n2), .B1(N22), .B2(n4), .Z(n7) );
  AO22M1RA U9 ( .A1(output_data[17]), .A2(n3), .B1(N21), .B2(n4), .Z(n8) );
  AO22M1RA U10 ( .A1(output_data[16]), .A2(n26), .B1(N20), .B2(n4), .Z(n9) );
  AO22M1RA U11 ( .A1(output_data[15]), .A2(n2), .B1(N19), .B2(n4), .Z(n10) );
  AO22M1RA U12 ( .A1(output_data[14]), .A2(n3), .B1(N18), .B2(n4), .Z(n11) );
  AO22M1RA U13 ( .A1(output_data[13]), .A2(n26), .B1(N17), .B2(n4), .Z(n12) );
  AO22M1RA U14 ( .A1(output_data[12]), .A2(n2), .B1(N16), .B2(n4), .Z(n13) );
  AO22M1RA U15 ( .A1(output_data[11]), .A2(n3), .B1(N15), .B2(n4), .Z(n14) );
  AO22M1RA U16 ( .A1(output_data[10]), .A2(n26), .B1(N14), .B2(n4), .Z(n15) );
  AO22M1RA U17 ( .A1(output_data[9]), .A2(n2), .B1(N13), .B2(n4), .Z(n16) );
  AO22M1RA U18 ( .A1(output_data[8]), .A2(n3), .B1(N12), .B2(n4), .Z(n17) );
  AO22M1RA U19 ( .A1(output_data[7]), .A2(n26), .B1(N11), .B2(n4), .Z(n18) );
  AO22M1RA U20 ( .A1(output_data[6]), .A2(n2), .B1(N10), .B2(n4), .Z(n19) );
  AO22M1RA U21 ( .A1(output_data[5]), .A2(n3), .B1(N9), .B2(n4), .Z(n20) );
  AO22M1RA U22 ( .A1(output_data[4]), .A2(n26), .B1(N8), .B2(n4), .Z(n21) );
  AO22M1RA U23 ( .A1(output_data[3]), .A2(n2), .B1(N7), .B2(n4), .Z(n22) );
  AO22M1RA U24 ( .A1(output_data[2]), .A2(n3), .B1(N6), .B2(n4), .Z(n23) );
  AO22M1RA U25 ( .A1(output_data[1]), .A2(n3), .B1(N5), .B2(n4), .Z(n24) );
  NR2M2R U26 ( .A(rst), .B(en), .Z(n26) );
  AO22M1RA U27 ( .A1(output_data[0]), .A2(n2), .B1(N4), .B2(n4), .Z(n25) );
  NR2B1M2R U28 ( .NA(en), .B(rst), .Z(N64) );
  AN2M2R U29 ( .A(input_data[1]), .B(n5), .Z(N25) );
  AN2M2R U30 ( .A(input_data[2]), .B(n27), .Z(N26) );
  AN2M2R U31 ( .A(input_data[3]), .B(n5), .Z(N27) );
  AN2M2R U32 ( .A(input_data[4]), .B(n27), .Z(N28) );
  AN2M2R U33 ( .A(input_data[5]), .B(n5), .Z(N29) );
  AN2M2R U34 ( .A(input_data[6]), .B(n27), .Z(N30) );
  AN2M2R U35 ( .A(input_data[7]), .B(n5), .Z(N31) );
  AN2M2R U36 ( .A(input_data[8]), .B(n27), .Z(N32) );
  AN2M2R U37 ( .A(input_data[9]), .B(n5), .Z(N33) );
  AN2M2R U38 ( .A(input_data[10]), .B(n27), .Z(N34) );
  AN2M2R U39 ( .A(input_data[11]), .B(n5), .Z(N35) );
  AN2M2R U40 ( .A(input_data[12]), .B(n27), .Z(N36) );
  AN2M2R U41 ( .A(input_data[13]), .B(n5), .Z(N37) );
  AN2M2R U42 ( .A(input_data[14]), .B(n27), .Z(N38) );
  AN2M2R U43 ( .A(input_data[15]), .B(n5), .Z(N39) );
  AN2M2R U44 ( .A(input_data[16]), .B(n27), .Z(N40) );
  AN2M2R U45 ( .A(input_data[17]), .B(n5), .Z(N41) );
  AN2M2R U46 ( .A(input_data[18]), .B(n27), .Z(N42) );
  AN2M2R U47 ( .A(input_data[19]), .B(n5), .Z(N43) );
  AN2M2R U48 ( .A(input_data[0]), .B(n27), .Z(N24) );
  NR2M2R U49 ( .A(rst), .B(en), .Z(n3) );
  NR2M2R U50 ( .A(rst), .B(en), .Z(n2) );
endmodule


module comb_IW20_OW20_0_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  wire   [20:0] carry;

  ADFM2RA U2_18 ( .A(A[18]), .B(n3), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADFM2RA U2_17 ( .A(A[17]), .B(n4), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADFM2RA U2_16 ( .A(A[16]), .B(n5), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADFM2RA U2_15 ( .A(A[15]), .B(n6), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADFM2RA U2_14 ( .A(A[14]), .B(n7), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADFM2RA U2_13 ( .A(A[13]), .B(n8), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADFM2RA U2_12 ( .A(A[12]), .B(n9), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADFM2RA U2_11 ( .A(A[11]), .B(n10), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADFM2RA U2_10 ( .A(A[10]), .B(n11), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADFM2RA U2_9 ( .A(A[9]), .B(n12), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADFM2RA U2_8 ( .A(A[8]), .B(n13), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADFM2RA U2_7 ( .A(A[7]), .B(n14), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADFM2RA U2_6 ( .A(A[6]), .B(n15), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADFM2RA U2_5 ( .A(A[5]), .B(n16), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADFM2RA U2_4 ( .A(A[4]), .B(n17), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADFM2RA U2_3 ( .A(A[3]), .B(n18), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADFM2RA U2_2 ( .A(A[2]), .B(n19), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADFM2RA U2_1 ( .A(A[1]), .B(n20), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3M2RA U2_19 ( .A(A[19]), .B(n2), .C(carry[19]), .Z(DIFF[19]) );
  INVM2R U1 ( .A(B[2]), .Z(n19) );
  INVM2R U2 ( .A(B[3]), .Z(n18) );
  INVM2R U3 ( .A(B[4]), .Z(n17) );
  INVM2R U4 ( .A(B[5]), .Z(n16) );
  INVM2R U5 ( .A(B[6]), .Z(n15) );
  INVM2R U6 ( .A(B[10]), .Z(n11) );
  INVM2R U7 ( .A(B[11]), .Z(n10) );
  INVM2R U8 ( .A(B[12]), .Z(n9) );
  INVM2R U9 ( .A(B[17]), .Z(n4) );
  INVM2R U10 ( .A(B[1]), .Z(n20) );
  ND2M2R U11 ( .A(B[0]), .B(n1), .Z(carry[1]) );
  INVM2R U12 ( .A(B[7]), .Z(n14) );
  INVM2R U13 ( .A(B[8]), .Z(n13) );
  INVM2R U14 ( .A(B[9]), .Z(n12) );
  INVM2R U15 ( .A(B[13]), .Z(n8) );
  INVM2R U16 ( .A(B[14]), .Z(n7) );
  INVM2R U17 ( .A(B[15]), .Z(n6) );
  INVM2R U18 ( .A(B[18]), .Z(n3) );
  INVM2R U19 ( .A(B[16]), .Z(n5) );
  INVM2R U20 ( .A(A[0]), .Z(n1) );
  INVM2R U21 ( .A(B[19]), .Z(n2) );
  INVM2R U22 ( .A(B[0]), .Z(n21) );
  XOR2M2RA U23 ( .A(n1), .B(n21), .Z(DIFF[0]) );
endmodule


module comb_IW20_OW20_0 ( clk, rst, en, input_data, output_data, out_ready );
  input [19:0] input_data;
  output [19:0] output_data;
  input clk, rst, en;
  output out_ready;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N64, n2, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;
  wire   [19:0] input_delayed;

  comb_IW20_OW20_0_DW01_sub_0 sub_277 ( .A(input_data), .B(input_delayed), 
        .CI(1'b0), .DIFF({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4}) );
  DFQM2RA \output_data_temp_reg[0]  ( .D(n28), .CK(clk), .Q(output_data[0]) );
  DFQM2RA \output_data_temp_reg[1]  ( .D(n29), .CK(clk), .Q(output_data[1]) );
  DFQM2RA \output_data_temp_reg[2]  ( .D(n30), .CK(clk), .Q(output_data[2]) );
  DFQM2RA \output_data_temp_reg[3]  ( .D(n31), .CK(clk), .Q(output_data[3]) );
  DFQM2RA \output_data_temp_reg[4]  ( .D(n32), .CK(clk), .Q(output_data[4]) );
  DFQM2RA \output_data_temp_reg[5]  ( .D(n33), .CK(clk), .Q(output_data[5]) );
  DFQM2RA \output_data_temp_reg[6]  ( .D(n34), .CK(clk), .Q(output_data[6]) );
  DFQM2RA \output_data_temp_reg[7]  ( .D(n35), .CK(clk), .Q(output_data[7]) );
  DFQM2RA \output_data_temp_reg[8]  ( .D(n36), .CK(clk), .Q(output_data[8]) );
  DFQM2RA \output_data_temp_reg[9]  ( .D(n37), .CK(clk), .Q(output_data[9]) );
  DFQM2RA \output_data_temp_reg[10]  ( .D(n38), .CK(clk), .Q(output_data[10])
         );
  DFQM2RA \output_data_temp_reg[11]  ( .D(n39), .CK(clk), .Q(output_data[11])
         );
  DFQM2RA \output_data_temp_reg[12]  ( .D(n40), .CK(clk), .Q(output_data[12])
         );
  DFQM2RA \output_data_temp_reg[13]  ( .D(n41), .CK(clk), .Q(output_data[13])
         );
  DFQM2RA \output_data_temp_reg[14]  ( .D(n42), .CK(clk), .Q(output_data[14])
         );
  DFQM2RA \output_data_temp_reg[15]  ( .D(n43), .CK(clk), .Q(output_data[15])
         );
  DFQM2RA \output_data_temp_reg[16]  ( .D(n44), .CK(clk), .Q(output_data[16])
         );
  DFQM2RA \output_data_temp_reg[17]  ( .D(n45), .CK(clk), .Q(output_data[17])
         );
  DFQM2RA \output_data_temp_reg[18]  ( .D(n46), .CK(clk), .Q(output_data[18])
         );
  DFQM2RA \output_data_temp_reg[19]  ( .D(n47), .CK(clk), .Q(output_data[19])
         );
  DFQM2RA out_ready_reg ( .D(N64), .CK(clk), .Q(out_ready) );
  DFQM2RA \input_delayed_reg[19]  ( .D(N43), .CK(clk), .Q(input_delayed[19])
         );
  DFQM2RA \input_delayed_reg[18]  ( .D(N42), .CK(clk), .Q(input_delayed[18])
         );
  DFQM2RA \input_delayed_reg[17]  ( .D(N41), .CK(clk), .Q(input_delayed[17])
         );
  DFQM2RA \input_delayed_reg[16]  ( .D(N40), .CK(clk), .Q(input_delayed[16])
         );
  DFQM2RA \input_delayed_reg[15]  ( .D(N39), .CK(clk), .Q(input_delayed[15])
         );
  DFQM2RA \input_delayed_reg[14]  ( .D(N38), .CK(clk), .Q(input_delayed[14])
         );
  DFQM2RA \input_delayed_reg[13]  ( .D(N37), .CK(clk), .Q(input_delayed[13])
         );
  DFQM2RA \input_delayed_reg[12]  ( .D(N36), .CK(clk), .Q(input_delayed[12])
         );
  DFQM2RA \input_delayed_reg[11]  ( .D(N35), .CK(clk), .Q(input_delayed[11])
         );
  DFQM2RA \input_delayed_reg[10]  ( .D(N34), .CK(clk), .Q(input_delayed[10])
         );
  DFQM2RA \input_delayed_reg[9]  ( .D(N33), .CK(clk), .Q(input_delayed[9]) );
  DFQM2RA \input_delayed_reg[8]  ( .D(N32), .CK(clk), .Q(input_delayed[8]) );
  DFQM2RA \input_delayed_reg[7]  ( .D(N31), .CK(clk), .Q(input_delayed[7]) );
  DFQM2RA \input_delayed_reg[6]  ( .D(N30), .CK(clk), .Q(input_delayed[6]) );
  DFQM2RA \input_delayed_reg[5]  ( .D(N29), .CK(clk), .Q(input_delayed[5]) );
  DFQM2RA \input_delayed_reg[4]  ( .D(N28), .CK(clk), .Q(input_delayed[4]) );
  DFQM2RA \input_delayed_reg[3]  ( .D(N27), .CK(clk), .Q(input_delayed[3]) );
  DFQM2RA \input_delayed_reg[2]  ( .D(N26), .CK(clk), .Q(input_delayed[2]) );
  DFQM2RA \input_delayed_reg[1]  ( .D(N25), .CK(clk), .Q(input_delayed[1]) );
  DFQM2RA \input_delayed_reg[0]  ( .D(N24), .CK(clk), .Q(input_delayed[0]) );
  NR2M2R U3 ( .A(n26), .B(rst), .Z(n49) );
  OR2M2R U5 ( .A(N64), .B(n50), .Z(n27) );
  OR2M2R U6 ( .A(N64), .B(n2), .Z(n48) );
  AO22M1RA U7 ( .A1(output_data[19]), .A2(n26), .B1(N23), .B2(n49), .Z(n47) );
  AO22M1RA U8 ( .A1(output_data[18]), .A2(n2), .B1(N22), .B2(n49), .Z(n46) );
  AO22M1RA U9 ( .A1(output_data[17]), .A2(n50), .B1(N21), .B2(n49), .Z(n45) );
  AO22M1RA U10 ( .A1(output_data[16]), .A2(n26), .B1(N20), .B2(n49), .Z(n44)
         );
  AO22M1RA U11 ( .A1(output_data[15]), .A2(n2), .B1(N19), .B2(n49), .Z(n43) );
  AO22M1RA U12 ( .A1(output_data[14]), .A2(n50), .B1(N18), .B2(n49), .Z(n42)
         );
  AO22M1RA U13 ( .A1(output_data[13]), .A2(n26), .B1(N17), .B2(n49), .Z(n41)
         );
  AO22M1RA U14 ( .A1(output_data[12]), .A2(n2), .B1(N16), .B2(n49), .Z(n40) );
  AO22M1RA U15 ( .A1(output_data[11]), .A2(n50), .B1(N15), .B2(n49), .Z(n39)
         );
  AO22M1RA U16 ( .A1(output_data[10]), .A2(n26), .B1(N14), .B2(n49), .Z(n38)
         );
  AO22M1RA U17 ( .A1(output_data[9]), .A2(n2), .B1(N13), .B2(n49), .Z(n37) );
  AO22M1RA U18 ( .A1(output_data[8]), .A2(n50), .B1(N12), .B2(n49), .Z(n36) );
  AO22M1RA U19 ( .A1(output_data[7]), .A2(n26), .B1(N11), .B2(n49), .Z(n35) );
  AO22M1RA U20 ( .A1(output_data[6]), .A2(n2), .B1(N10), .B2(n49), .Z(n34) );
  AO22M1RA U21 ( .A1(output_data[5]), .A2(n50), .B1(N9), .B2(n49), .Z(n33) );
  AO22M1RA U22 ( .A1(output_data[4]), .A2(n26), .B1(N8), .B2(n49), .Z(n32) );
  AO22M1RA U23 ( .A1(output_data[3]), .A2(n2), .B1(N7), .B2(n49), .Z(n31) );
  AO22M1RA U24 ( .A1(output_data[2]), .A2(n50), .B1(N6), .B2(n49), .Z(n30) );
  AO22M1RA U25 ( .A1(output_data[1]), .A2(n50), .B1(N5), .B2(n49), .Z(n29) );
  NR2M2R U26 ( .A(rst), .B(en), .Z(n26) );
  NR2B1M2R U27 ( .NA(en), .B(rst), .Z(N64) );
  AO22M1RA U28 ( .A1(output_data[0]), .A2(n2), .B1(N4), .B2(n49), .Z(n28) );
  AN2M2R U29 ( .A(input_data[1]), .B(n48), .Z(N25) );
  AN2M2R U30 ( .A(input_data[2]), .B(n27), .Z(N26) );
  AN2M2R U31 ( .A(input_data[3]), .B(n48), .Z(N27) );
  AN2M2R U32 ( .A(input_data[4]), .B(n27), .Z(N28) );
  AN2M2R U33 ( .A(input_data[5]), .B(n48), .Z(N29) );
  AN2M2R U34 ( .A(input_data[6]), .B(n27), .Z(N30) );
  AN2M2R U35 ( .A(input_data[7]), .B(n48), .Z(N31) );
  AN2M2R U36 ( .A(input_data[8]), .B(n27), .Z(N32) );
  AN2M2R U37 ( .A(input_data[9]), .B(n48), .Z(N33) );
  AN2M2R U38 ( .A(input_data[10]), .B(n27), .Z(N34) );
  AN2M2R U39 ( .A(input_data[11]), .B(n48), .Z(N35) );
  AN2M2R U40 ( .A(input_data[12]), .B(n27), .Z(N36) );
  AN2M2R U41 ( .A(input_data[13]), .B(n48), .Z(N37) );
  AN2M2R U42 ( .A(input_data[14]), .B(n27), .Z(N38) );
  AN2M2R U43 ( .A(input_data[15]), .B(n48), .Z(N39) );
  AN2M2R U44 ( .A(input_data[16]), .B(n27), .Z(N40) );
  AN2M2R U45 ( .A(input_data[17]), .B(n48), .Z(N41) );
  AN2M2R U46 ( .A(input_data[18]), .B(n27), .Z(N42) );
  AN2M2R U47 ( .A(input_data[19]), .B(n48), .Z(N43) );
  AN2M2R U48 ( .A(input_data[0]), .B(n27), .Z(N24) );
  NR2M2R U49 ( .A(rst), .B(en), .Z(n50) );
  NR2M2R U50 ( .A(rst), .B(en), .Z(n2) );
endmodule


module all_combs_IW20_OW20_N2 ( clk, rst, en, din, dout, out_ready );
  input [19:0] din;
  output [19:0] dout;
  input clk, rst, en;
  output out_ready;
  wire   \stage[1][19] , \stage[1][18] , \stage[1][17] , \stage[1][16] ,
         \stage[1][15] , \stage[1][14] , \stage[1][13] , \stage[1][12] ,
         \stage[1][11] , \stage[1][10] , \stage[1][9] , \stage[1][8] ,
         \stage[1][7] , \stage[1][6] , \stage[1][5] , \stage[1][4] ,
         \stage[1][3] , \stage[1][2] , \stage[1][1] , \stage[1][0] ,
         \out_ready_temp[1] ;

  comb_IW20_OW20_1 \comb_gen[0].comb  ( .clk(clk), .rst(rst), .en(en), 
        .input_data(din), .output_data({\stage[1][19] , \stage[1][18] , 
        \stage[1][17] , \stage[1][16] , \stage[1][15] , \stage[1][14] , 
        \stage[1][13] , \stage[1][12] , \stage[1][11] , \stage[1][10] , 
        \stage[1][9] , \stage[1][8] , \stage[1][7] , \stage[1][6] , 
        \stage[1][5] , \stage[1][4] , \stage[1][3] , \stage[1][2] , 
        \stage[1][1] , \stage[1][0] }), .out_ready(\out_ready_temp[1] ) );
  comb_IW20_OW20_0 \comb_gen[1].comb  ( .clk(clk), .rst(rst), .en(
        \out_ready_temp[1] ), .input_data({\stage[1][19] , \stage[1][18] , 
        \stage[1][17] , \stage[1][16] , \stage[1][15] , \stage[1][14] , 
        \stage[1][13] , \stage[1][12] , \stage[1][11] , \stage[1][10] , 
        \stage[1][9] , \stage[1][8] , \stage[1][7] , \stage[1][6] , 
        \stage[1][5] , \stage[1][4] , \stage[1][3] , \stage[1][2] , 
        \stage[1][1] , \stage[1][0] }), .output_data(dout), .out_ready(
        out_ready) );
endmodule


module cic_top_IW2_OW20_N2_DECIMATION_FACTOR1024 ( clk, rst, en, din, dout, 
        out_ready );
  input [1:0] din;
  output [19:0] dout;
  input clk, rst, en;
  output out_ready;
  wire   integrator_ready, downsampler_ready;
  wire   [19:0] integrator_out;
  wire   [19:0] downsampler_out;

  all_integrators_IW2_OW20_N2 integrators ( .clk(clk), .rst(rst), .en(en), 
        .din(din), .dout(integrator_out), .out_ready(integrator_ready) );
  downsampler_W20_DECIMATION_FACTOR1024 downsampler_inst ( .clk(clk), .rst(rst), .en(integrator_ready), .input_data(integrator_out), .output_data(
        downsampler_out), .out_ready(downsampler_ready) );
  all_combs_IW20_OW20_N2 combs ( .clk(clk), .rst(rst), .en(downsampler_ready), 
        .din(downsampler_out), .dout(dout), .out_ready(out_ready) );
endmodule


module downsampler_without_out_ready_W20_DECIMATION_FACTOR2 ( clk, rst, en, 
        input_data, output_data );
  input [19:0] input_data;
  output [19:0] output_data;
  input clk, rst, en;
  wire   \counter[0] , n1, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n2, n3;

  XOR2M2RA U26 ( .A(en), .B(\counter[0] ), .Z(n4) );
  DFQRM2RA \out_reg[18]  ( .D(n5), .CK(clk), .RB(n3), .Q(output_data[18]) );
  DFQRM2RA \out_reg[17]  ( .D(n6), .CK(clk), .RB(n3), .Q(output_data[17]) );
  DFQRM2RA \out_reg[16]  ( .D(n7), .CK(clk), .RB(n3), .Q(output_data[16]) );
  DFQRM2RA \out_reg[15]  ( .D(n8), .CK(clk), .RB(n3), .Q(output_data[15]) );
  DFQRM2RA \out_reg[14]  ( .D(n9), .CK(clk), .RB(n3), .Q(output_data[14]) );
  DFQRM2RA \out_reg[13]  ( .D(n10), .CK(clk), .RB(n3), .Q(output_data[13]) );
  DFQRM2RA \out_reg[12]  ( .D(n11), .CK(clk), .RB(n3), .Q(output_data[12]) );
  DFQRM2RA \out_reg[11]  ( .D(n12), .CK(clk), .RB(n3), .Q(output_data[11]) );
  DFQRM2RA \out_reg[10]  ( .D(n13), .CK(clk), .RB(n3), .Q(output_data[10]) );
  DFQRM2RA \out_reg[9]  ( .D(n14), .CK(clk), .RB(n3), .Q(output_data[9]) );
  DFQRM2RA \out_reg[8]  ( .D(n15), .CK(clk), .RB(n3), .Q(output_data[8]) );
  DFQRM2RA \out_reg[7]  ( .D(n16), .CK(clk), .RB(n3), .Q(output_data[7]) );
  DFQRM2RA \out_reg[6]  ( .D(n17), .CK(clk), .RB(n3), .Q(output_data[6]) );
  DFQRM2RA \out_reg[5]  ( .D(n18), .CK(clk), .RB(n3), .Q(output_data[5]) );
  DFQRM2RA \out_reg[4]  ( .D(n19), .CK(clk), .RB(n3), .Q(output_data[4]) );
  DFQRM2RA \out_reg[3]  ( .D(n20), .CK(clk), .RB(n3), .Q(output_data[3]) );
  DFQRM2RA \out_reg[2]  ( .D(n21), .CK(clk), .RB(n3), .Q(output_data[2]) );
  DFQRM2RA \out_reg[1]  ( .D(n22), .CK(clk), .RB(n3), .Q(output_data[1]) );
  DFQRM2RA \out_reg[0]  ( .D(n23), .CK(clk), .RB(n3), .Q(output_data[0]) );
  DFQRM2RA \out_reg[19]  ( .D(n24), .CK(clk), .RB(n3), .Q(output_data[19]) );
  DFQRM2RA \counter_reg[0]  ( .D(n4), .CK(clk), .RB(n3), .Q(\counter[0] ) );
  INVM2R U3 ( .A(n1), .Z(n2) );
  ND2M2R U4 ( .A(en), .B(\counter[0] ), .Z(n1) );
  AO22M1RA U5 ( .A1(output_data[19]), .A2(n1), .B1(input_data[19]), .B2(n2), 
        .Z(n24) );
  AO22M1RA U6 ( .A1(output_data[0]), .A2(n1), .B1(input_data[0]), .B2(n2), .Z(
        n23) );
  AO22M1RA U7 ( .A1(output_data[1]), .A2(n1), .B1(input_data[1]), .B2(n2), .Z(
        n22) );
  AO22M1RA U8 ( .A1(output_data[2]), .A2(n1), .B1(input_data[2]), .B2(n2), .Z(
        n21) );
  AO22M1RA U9 ( .A1(output_data[3]), .A2(n1), .B1(input_data[3]), .B2(n2), .Z(
        n20) );
  AO22M1RA U10 ( .A1(output_data[4]), .A2(n1), .B1(input_data[4]), .B2(n2), 
        .Z(n19) );
  AO22M1RA U11 ( .A1(output_data[5]), .A2(n1), .B1(input_data[5]), .B2(n2), 
        .Z(n18) );
  AO22M1RA U12 ( .A1(output_data[6]), .A2(n1), .B1(input_data[6]), .B2(n2), 
        .Z(n17) );
  AO22M1RA U13 ( .A1(output_data[7]), .A2(n1), .B1(input_data[7]), .B2(n2), 
        .Z(n16) );
  AO22M1RA U14 ( .A1(output_data[8]), .A2(n1), .B1(input_data[8]), .B2(n2), 
        .Z(n15) );
  AO22M1RA U15 ( .A1(output_data[9]), .A2(n1), .B1(input_data[9]), .B2(n2), 
        .Z(n14) );
  AO22M1RA U16 ( .A1(output_data[10]), .A2(n1), .B1(input_data[10]), .B2(n2), 
        .Z(n13) );
  AO22M1RA U17 ( .A1(output_data[11]), .A2(n1), .B1(input_data[11]), .B2(n2), 
        .Z(n12) );
  AO22M1RA U18 ( .A1(output_data[12]), .A2(n1), .B1(input_data[12]), .B2(n2), 
        .Z(n11) );
  AO22M1RA U19 ( .A1(output_data[13]), .A2(n1), .B1(input_data[13]), .B2(n2), 
        .Z(n10) );
  AO22M1RA U20 ( .A1(output_data[14]), .A2(n1), .B1(input_data[14]), .B2(n2), 
        .Z(n9) );
  AO22M1RA U21 ( .A1(output_data[15]), .A2(n1), .B1(input_data[15]), .B2(n2), 
        .Z(n8) );
  AO22M1RA U22 ( .A1(output_data[16]), .A2(n1), .B1(input_data[16]), .B2(n2), 
        .Z(n7) );
  AO22M1RA U23 ( .A1(output_data[17]), .A2(n1), .B1(input_data[17]), .B2(n2), 
        .Z(n6) );
  AO22M1RA U24 ( .A1(output_data[18]), .A2(n1), .B1(input_data[18]), .B2(n2), 
        .Z(n5) );
  INVM2R U25 ( .A(rst), .Z(n3) );
endmodule


module full_filter_IW2_OW20_N2_R11024_R22 ( clk, rst, en, din, dout );
  input [1:0] din;
  output [19:0] dout;
  input clk, rst, en;
  wire   out_ready_cic;
  wire   [19:0] cic_out;

  cic_top_IW2_OW20_N2_DECIMATION_FACTOR1024 cic_inst ( .clk(clk), .rst(rst), 
        .en(en), .din(din), .dout(cic_out), .out_ready(out_ready_cic) );
  downsampler_without_out_ready_W20_DECIMATION_FACTOR2 downsampler_inst ( 
        .clk(clk), .rst(rst), .en(out_ready_cic), .input_data(cic_out), 
        .output_data(dout) );
endmodule


module top_all_modules ( clk, rst, en, din, dout );
  output [19:0] dout;
  input clk, rst, en, din;

  wire   [1:0] demodulator_out;

  demodulator demodulator_inst ( .clk(clk), .rst(rst), .en(en), .din(din), 
        .dout(demodulator_out) );
  full_filter_IW2_OW20_N2_R11024_R22 full_filter_inst ( .clk(clk), .rst(rst), 
        .en(en), .din(demodulator_out), .dout(dout) );
endmodule

