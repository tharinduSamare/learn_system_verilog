// module ful_adder_tb (
// );

// timeunit 1ns;
// timeprecision 1ps;

// localparam clk_period = 10;
// logic clk;

// initial begin
//     clk <= 0;
//     forever #(clk_period/2) clk <= ~clk;
// end

// logic a = 0;
// logic b ;
// logic c_in = 0;
// logic sum;
// logic c_out;

// ful_adder fa(.*);

// initial begin
//     @(posedge clk);
//     #(clk_period*3);

//     @(posedge clk);
//     a <= 0;
//     b <= 0;
//     c_in <= 0;

//     @(posedge clk);
//     a <= 0;
//     b <= 0;
//     c_in <= 1;

//     #(clk_period*2);
//     @(posedge clk);
//     a <= 1;
//     b <= 1;
//     c_in <= 0;

//     @(posedge clk);
//     a <= 1;
//     b <= 1;
//     c_in <= 1;
// end

// endmodule

module ful_adder_tb ();

  timeunit 1ns;
  timeprecision 1ps;

  localparam CLK_PERIOD = 10;
  logic clk;
//   initial begin
//     clk <= 0;
//     forever begin
//         #(CLK_PERIOD/2);
//         clk <= ~clk;sdfsdfsfsdfsfd
//   end
initial begin
    clk <= 0;
end

always begin
    #(CLK_PERIOD/2);
    clk <= 1;
    #(CLK_PERIOD/2);
    clk <= 0;
end


  logic a     = 0;
  logic b     ; // = 0, intentional
  logic c_in  = 0;
  logic sum   ;
  logic c_out ;

  ful_adder fa (.*);


  initial begin
    // Simulation starts

    @(posedge clk);
    #(CLK_PERIOD*3);

    @(posedge clk);
    a  <= 0;
    b  <= 0;
    c_in <= 0;

    @(posedge clk);
    a  <= 0;
    b  <= 0;
    c_in <= 1;

    #(CLK_PERIOD*2);
    @(posedge clk);
    a  <= 1;
    b  <= 1;
    c_in <= 0;
    @(posedge clk);
    a  <= 1;
    b  <= 1;
    c_in <= 1;

  end
endmodule