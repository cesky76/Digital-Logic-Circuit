`timescale 1ns/1ps

module tb_mux_2X4;

reg [3:0] data;
reg [1:0] sel;
wire out;

mux_2to4 instance_mux (
    .data(data),
    .sel(sel),
    .out(out)
);

initial begin
    data = 4'b0000;
    // 선택 신호 초기화
    sel = 2'b00;
    
   
    #10 data = 4'b0001; sel = 2'b00;
    #10 data = 4'b0010; sel = 2'b01;
    #10 data = 4'b0100; sel = 2'b10;
    #10 data = 4'b1000; sel = 2'b11;
    #10 $finish;
end

initial begin
    $monitor("Time=%t, data=%b, sel=%b, out=%b", $time, data, sel, out);
end

endmodule
