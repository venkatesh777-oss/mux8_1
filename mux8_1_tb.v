module mux8_1_tb;
reg [7:0]i_tb;
reg [2:0]sel_tb;
wire y0_tb;
mux8_1 dut (.i(i_tb),
            .sel(sel_tb),
            .y0(y0_tb));
            
 initial begin
 i_tb= 8'b10101010; //example input "aa-10101010"
 sel_tb=3'b000;#10;  //select i[0]
 sel_tb=3'b001;#10;//select i[1]
 sel_tb=3'b010;#10;//select i[2]
 sel_tb=3'b011;#10;//select i[3]
 sel_tb=3'b100;#10;//select i[4]
 sel_tb=3'b101;#10;//select i[5]
 sel_tb=3'b110;#10;//select i[6]
 sel_tb=3'b111;#10;//select i[7]
 $finish;
 end
 
endmodule
