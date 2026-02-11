module updown_tb;
reg clk ;
reg reset ;
reg dir ;
wire [3:0] count ;

updown uut (.clk(cllk) , .reset(reset) , .count(count) , .dir(dir));

always #5 clk = ~clk;
initial begin
    clk = 0;
    reset = 1;
    dir = 1;

    #10 reset = 0;
    #40 dir = 0 ;
    #40 dir =1;

    #30 $finish;
end
    
endmodule