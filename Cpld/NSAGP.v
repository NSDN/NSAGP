module NSAGP(
	nRST, CLK,
	KEY, LED,
	ADDR, DATA, nWR, nRD,
	CIO
);

	input nRST, CLK;
	
	wire RST;
	assign RST = !nRST;
	
	input KEY;
	output reg[1:0] LED;
	
	input[1:0] ADDR;
	inout[7:0] DATA;
	reg[7:0] DATA_BUF;
	input nWR, nRD;
	
	wire nCS;
	assign nCS = 1'b1;//!ADDR[1];
	wire iWR, iRD;
	assign iWR = nWR || nCS;
	assign iRD = nRD || nCS;
	
	assign DATA = (nCS || nRD) ? 8'bz : DATA_BUF;
	
	inout[9:0] CIO;
	reg[9:0] CIO_ODR, CIO_IDR, CIO_CFG;

	genvar k;
	generate
	for (k = 0; k < 10; k = k + 1)
		begin : cio_ctl
			assign CIO[k] = CIO_CFG[k] ? CIO_ODR[k] : 1'bz;
		end
	endgenerate
	
	always @(negedge nRST or posedge CLK) begin
		if (!nRST) begin
			CIO_IDR <= 10'hFF;
		end else begin
			integer i;
			for (i = 0; i < 10; i = i + 1) begin
				if (!CIO_CFG[i])
					CIO_IDR[i] <= CIO[i];
			end
		end
	end
	
	always @(posedge RST or negedge iRD) begin
		if (RST) begin
			DATA_BUF <= 8'hFF;
		end else begin
			
		end
	end

	always @(posedge RST or negedge iWR) begin
		if (RST) begin
			LED <= 2'b11;
			CIO_ODR <= 10'hFF;
			CIO_CFG <= 10'b0;
		end else begin
			
		end
	end
	
endmodule
