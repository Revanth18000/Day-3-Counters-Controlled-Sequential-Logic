module COUNTER4_TB;
reg clk ;
reg reset ;
wire [3:0] count;
COUNTER4 uut (.clk(clk) , .reset(reset) , .count(count));
always #5 clk =~clk;
initial begin
    clk = 0;
    reset = 1;

    #10 reset = 0 ;
    

    #50 reset = 1;
    #10 reset = 0;

    #50 $finish;

end

endmodule