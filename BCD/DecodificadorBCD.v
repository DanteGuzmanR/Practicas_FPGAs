module DecodificadorBCD (
    input wire [9:0] BCD_in,  
    output wire [0:6] D1,D2,D3,D4
);

reg [3:0] unidades,decenas,centenas,millares;

    always @ (BCD_in) 
	 begin
	 unidades = BCD_in % 10;
	 decenas = (BCD_in % 100) / 10;
	 centenas = (BCD_in % 1000) / 100;
	 millares = BCD_in / 1000;
	 end
	 
	 Decoder D1_inst(
	 
	 .decoder_in(unidades),
	 .decoder_out(D1)
	 
	 );
	 
	 Decoder D2_inst(
	 
	 .decoder_in(decenas),
	 .decoder_out(D2)
	 
	 );
	 
	 Decoder D3_inst(
	 
	 .decoder_in(centenas),
	 .decoder_out(D3)
	 
	 );
	 
	 Decoder D4_inst(
	 
	 .decoder_in(millares),
	 .decoder_out(D4)
	 
	 );
endmodule
