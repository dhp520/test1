module rtl(
	input	clk,
	input 	rst_n,
	input 	d,
	output	q
);
	
	reg q_reg;

	always @(posedge clk or negedge rst_n) begin
		if(rst_n == 0)
			q_reg <= 1'b0;
		else
			q_reg <= d;
	end

	assign q = q_reg;

endmodule

