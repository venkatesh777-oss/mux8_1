module mux8_1(i,y0,sel);
input [7:0]i;  //inputs i0 t0 i7
input [2:0]sel;//selection input i0 to i2
output reg y0; //output
always@(*)begin
case(sel)
3'b000: y0=i[0];
3'b001: y0=i[1];
3'b010: y0=i[2];
3'b011: y0=i[3];
3'b100: y0=i[4];
3'b101: y0=i[5];
3'b110: y0=i[6];
3'b111: y0=i[7];
default: y0=1'b0; //undefined output to be 0
endcase
end

endmodule
