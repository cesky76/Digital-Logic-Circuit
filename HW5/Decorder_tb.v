`timescale 1ns/1ps

module tb_decoder_2X4;

reg [1:0] sel;
wire [3:0] out;

decoder_2to4 instance_decoder (
    .sel(sel),
    .out(out)
);

initial begin
    sel = 2'b00;
    
   
    #10 sel = 2'b01;
    #10 sel = 2'b10;
    #10 sel = 2'b11;
    #10 $finish;
end

initial begin
    $monitor("Time=%t, sel=%b, out=%b", $time, sel, out);
end

endmodule
