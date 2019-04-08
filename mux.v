//Verilog HDL for "verilog", "mux" "verilog"
module mux (adc_out_0,adc_out_1,adc_out_2,adc_out_3,clk,out );
   input [5:0] adc_out_0;
   input [5:0] adc_out_1;
   input [5:0] adc_out_2;
   input [5:0] adc_out_3;
   input clk;
   output [5:0] out;
   reg [5:0] 	out;
   reg [1:0] cnt;
      initial begin
cnt=2'b00;
end

   always @(posedge clk) begin
      cnt <= cnt+ 2'b01;
      case(cnt)
	2'b00 : out <= adc_out_0;
	2'b01 : out <= adc_out_1;
	2'b10 : out <= adc_out_2;
	2'b11 : out <= adc_out_3;
	
      endcase
   end
   
endmodule
