//module n_bit_adder
//#(
//    parameter N
//)
//(
//    input logic [N-1:0]a,b,
//    input logic c_in,
//    output logic c_cout,
//    output logic [N-1:0]sum
//);
//
//logic [N:0]c;
//assign c_cout = c[N];
//assign c[0] = c_in;
//
//generate 
//    for (genvar i=0; i<N; i++) begin: add
//        ful_adder fa(
//            .a(a[i]),
//            .b(b[i]),
//            .c_in(c[i]),
//            .c_out(c[i+1]),
//            .sum(sum[i])
//        );
//    end
//    // for (genvar i=0; i<N; i++) begin:add
//    //     ful_adder fa(
//    //         .a(a[i]),
//    //         .b(b[i]),
//    //         .c_in(c[i]),
//    //         .c_out(c[i+1]),
//    //         .sum(sum[i])
//    //     );
//    // end
//endgenerate
//
//
//endmodule