module  decoder3_8(
      input [2:0] a,//输入端口a,[2:0]表示位宽
      input g1,
      input g2,
      input g3,//使能信号1~3
      output reg[7:0] y//输出端口y，[7:0]表示位宽
      );

always @(*) begin
        if({g1,g2,g3} != 3'b100) //g1 g2 g3位使能信号，当他们为100是使能(正常运行)
           y <= 8'h00;
        else 
           case(a)
              3'b000: y <= 8'b0000_0001; 
              3'b001: y <= 8'b0000_0010; 
              3'b010: y <= 8'b0000_0100; 
              3'b011: y <= 8'b0000_1000; 
              3'b100: y <= 8'b0001_0000; 
              3'b101: y <= 8'b0010_0000; 
              3'b110: y <= 8'b0100_0000; 
              3'b111: y <= 8'b1000_0000; 
           endcase
end
endmodule
