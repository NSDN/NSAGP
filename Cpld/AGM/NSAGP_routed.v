`timescale 1 ps/ 1 ps

module NSAGP(
	nRST,
	CLK,
	KEY,
	LED,
	ADDR,
	DATA,
	nWR,
	nRD,
	CIO);
input	nRST;
input	CLK;
input	KEY;
output	[1:0] LED;
input	[1:0] ADDR;
inout	[7:0] DATA;
input	nWR;
input	nRD;
inout	[9:0] CIO;

//wire	gnd;
//wire	vcc;
wire	\ADDR[0]~input_o ;
wire	\ADDR[1]~input_o ;
wire	\CIO[0]~input_o ;
wire	\CIO[1]~input_o ;
wire	\CIO[2]~input_o ;
wire	\CIO[3]~input_o ;
wire	\CIO[4]~input_o ;
wire	\CIO[5]~input_o ;
wire	\CIO[6]~input_o ;
wire	\CIO[7]~input_o ;
wire	\CIO[8]~input_o ;
wire	\CIO[9]~input_o ;
wire	\CLK~input_o ;
wire	\DATA[0]~input_o ;
wire	\DATA[1]~input_o ;
wire	\DATA[2]~input_o ;
wire	\DATA[3]~input_o ;
wire	\DATA[4]~input_o ;
wire	\DATA[5]~input_o ;
wire	\DATA[6]~input_o ;
wire	\DATA[7]~input_o ;
wire	\KEY~input_o ;
tri1	devclrn;
tri1	devoe;
tri1	devpor;
wire	\nRD~input_o ;
wire	\nRST~input_o ;
wire	\nWR~input_o ;
wire	unknown;
wire	\~ALTERA_ASDO_DATA1~~ibuf_o ;
wire	\~ALTERA_ASDO_DATA1~~padout ;
wire	\~ALTERA_DATA0~~ibuf_o ;
wire	\~ALTERA_DATA0~~padout ;
wire	\~ALTERA_FLASH_nCE_nCSO~~ibuf_o ;
wire	\~ALTERA_FLASH_nCE_nCSO~~padout ;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;

alta_rio \ADDR[0]~input (
	.padio(ADDR[0]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ADDR[0]~input_o ),
	.regout());
defparam \ADDR[0]~input .coord_x = 5;
defparam \ADDR[0]~input .coord_y = 1;
defparam \ADDR[0]~input .coord_z = 0;
defparam \ADDR[0]~input .IN_ASYNC_MODE = 1'b0;
defparam \ADDR[0]~input .IN_SYNC_MODE = 1'b0;
defparam \ADDR[0]~input .IN_POWERUP = 1'b0;
defparam \ADDR[0]~input .OUT_REG_MODE = 1'b0;
defparam \ADDR[0]~input .OUT_ASYNC_MODE = 1'b0;
defparam \ADDR[0]~input .OUT_SYNC_MODE = 1'b0;
defparam \ADDR[0]~input .OUT_POWERUP = 1'b0;
defparam \ADDR[0]~input .OE_REG_MODE = 1'b0;
defparam \ADDR[0]~input .OE_ASYNC_MODE = 1'b0;
defparam \ADDR[0]~input .OE_SYNC_MODE = 1'b0;
defparam \ADDR[0]~input .OE_POWERUP = 1'b0;
defparam \ADDR[0]~input .CFG_TRI_INPUT = 1'b0;
defparam \ADDR[0]~input .CFG_PULL_UP = 1'b0;
defparam \ADDR[0]~input .CFG_SLR = 1'b0;
defparam \ADDR[0]~input .CFG_OPEN_DRAIN = 1'b0;
defparam \ADDR[0]~input .CFG_PDRCTRL = 4'b0010;
defparam \ADDR[0]~input .CFG_KEEP = 2'b00;
defparam \ADDR[0]~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \ADDR[0]~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ADDR[0]~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \ADDR[0]~input .CFG_LVDS_IN_EN = 1'b0;
defparam \ADDR[0]~input .DPCLK_DELAY = 4'b0000;
defparam \ADDR[0]~input .OUT_DELAY = 1'b0;
defparam \ADDR[0]~input .IN_DATA_DELAY = 3'b000;
defparam \ADDR[0]~input .IN_REG_DELAY = 3'b000;

alta_rio \ADDR[1]~input (
	.padio(ADDR[1]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\ADDR[1]~input_o ),
	.regout());
defparam \ADDR[1]~input .coord_x = 5;
defparam \ADDR[1]~input .coord_y = 1;
defparam \ADDR[1]~input .coord_z = 1;
defparam \ADDR[1]~input .IN_ASYNC_MODE = 1'b0;
defparam \ADDR[1]~input .IN_SYNC_MODE = 1'b0;
defparam \ADDR[1]~input .IN_POWERUP = 1'b0;
defparam \ADDR[1]~input .OUT_REG_MODE = 1'b0;
defparam \ADDR[1]~input .OUT_ASYNC_MODE = 1'b0;
defparam \ADDR[1]~input .OUT_SYNC_MODE = 1'b0;
defparam \ADDR[1]~input .OUT_POWERUP = 1'b0;
defparam \ADDR[1]~input .OE_REG_MODE = 1'b0;
defparam \ADDR[1]~input .OE_ASYNC_MODE = 1'b0;
defparam \ADDR[1]~input .OE_SYNC_MODE = 1'b0;
defparam \ADDR[1]~input .OE_POWERUP = 1'b0;
defparam \ADDR[1]~input .CFG_TRI_INPUT = 1'b0;
defparam \ADDR[1]~input .CFG_PULL_UP = 1'b0;
defparam \ADDR[1]~input .CFG_SLR = 1'b0;
defparam \ADDR[1]~input .CFG_OPEN_DRAIN = 1'b0;
defparam \ADDR[1]~input .CFG_PDRCTRL = 4'b0010;
defparam \ADDR[1]~input .CFG_KEEP = 2'b00;
defparam \ADDR[1]~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \ADDR[1]~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \ADDR[1]~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \ADDR[1]~input .CFG_LVDS_IN_EN = 1'b0;
defparam \ADDR[1]~input .DPCLK_DELAY = 4'b0000;
defparam \ADDR[1]~input .OUT_DELAY = 1'b0;
defparam \ADDR[1]~input .IN_DATA_DELAY = 3'b000;
defparam \ADDR[1]~input .IN_REG_DELAY = 3'b000;

alta_rio \CIO[0]~output (
	.padio(CIO[0]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[0]~input_o ),
	.regout());
defparam \CIO[0]~output .coord_x = 5;
defparam \CIO[0]~output .coord_y = 1;
defparam \CIO[0]~output .coord_z = 2;
defparam \CIO[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[0]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[0]~output .IN_POWERUP = 1'b0;
defparam \CIO[0]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[0]~output .OUT_POWERUP = 1'b0;
defparam \CIO[0]~output .OE_REG_MODE = 1'b0;
defparam \CIO[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[0]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[0]~output .OE_POWERUP = 1'b0;
defparam \CIO[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[0]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[0]~output .CFG_SLR = 1'b0;
defparam \CIO[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[0]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[0]~output .CFG_KEEP = 2'b00;
defparam \CIO[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[0]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[0]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[0]~output .OUT_DELAY = 1'b0;
defparam \CIO[0]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[0]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[1]~output (
	.padio(CIO[1]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[1]~input_o ),
	.regout());
defparam \CIO[1]~output .coord_x = 5;
defparam \CIO[1]~output .coord_y = 1;
defparam \CIO[1]~output .coord_z = 3;
defparam \CIO[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[1]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[1]~output .IN_POWERUP = 1'b0;
defparam \CIO[1]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[1]~output .OUT_POWERUP = 1'b0;
defparam \CIO[1]~output .OE_REG_MODE = 1'b0;
defparam \CIO[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[1]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[1]~output .OE_POWERUP = 1'b0;
defparam \CIO[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[1]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[1]~output .CFG_SLR = 1'b0;
defparam \CIO[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[1]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[1]~output .CFG_KEEP = 2'b00;
defparam \CIO[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[1]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[1]~output .OUT_DELAY = 1'b0;
defparam \CIO[1]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[2]~output (
	.padio(CIO[2]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[2]~input_o ),
	.regout());
defparam \CIO[2]~output .coord_x = 6;
defparam \CIO[2]~output .coord_y = 1;
defparam \CIO[2]~output .coord_z = 0;
defparam \CIO[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[2]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[2]~output .IN_POWERUP = 1'b0;
defparam \CIO[2]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[2]~output .OUT_POWERUP = 1'b0;
defparam \CIO[2]~output .OE_REG_MODE = 1'b0;
defparam \CIO[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[2]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[2]~output .OE_POWERUP = 1'b0;
defparam \CIO[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[2]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[2]~output .CFG_SLR = 1'b0;
defparam \CIO[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[2]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[2]~output .CFG_KEEP = 2'b00;
defparam \CIO[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[2]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[2]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[2]~output .OUT_DELAY = 1'b0;
defparam \CIO[2]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[2]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[3]~output (
	.padio(CIO[3]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[3]~input_o ),
	.regout());
defparam \CIO[3]~output .coord_x = 6;
defparam \CIO[3]~output .coord_y = 1;
defparam \CIO[3]~output .coord_z = 1;
defparam \CIO[3]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[3]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[3]~output .IN_POWERUP = 1'b0;
defparam \CIO[3]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[3]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[3]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[3]~output .OUT_POWERUP = 1'b0;
defparam \CIO[3]~output .OE_REG_MODE = 1'b0;
defparam \CIO[3]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[3]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[3]~output .OE_POWERUP = 1'b0;
defparam \CIO[3]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[3]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[3]~output .CFG_SLR = 1'b0;
defparam \CIO[3]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[3]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[3]~output .CFG_KEEP = 2'b00;
defparam \CIO[3]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[3]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[3]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[3]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[3]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[3]~output .OUT_DELAY = 1'b0;
defparam \CIO[3]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[3]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[4]~output (
	.padio(CIO[4]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[4]~input_o ),
	.regout());
defparam \CIO[4]~output .coord_x = 6;
defparam \CIO[4]~output .coord_y = 9;
defparam \CIO[4]~output .coord_z = 0;
defparam \CIO[4]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[4]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[4]~output .IN_POWERUP = 1'b0;
defparam \CIO[4]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[4]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[4]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[4]~output .OUT_POWERUP = 1'b0;
defparam \CIO[4]~output .OE_REG_MODE = 1'b0;
defparam \CIO[4]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[4]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[4]~output .OE_POWERUP = 1'b0;
defparam \CIO[4]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[4]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[4]~output .CFG_SLR = 1'b0;
defparam \CIO[4]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[4]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[4]~output .CFG_KEEP = 2'b00;
defparam \CIO[4]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[4]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[4]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[4]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[4]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[4]~output .OUT_DELAY = 1'b0;
defparam \CIO[4]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[4]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[5]~output (
	.padio(CIO[5]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[5]~input_o ),
	.regout());
defparam \CIO[5]~output .coord_x = 5;
defparam \CIO[5]~output .coord_y = 9;
defparam \CIO[5]~output .coord_z = 2;
defparam \CIO[5]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[5]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[5]~output .IN_POWERUP = 1'b0;
defparam \CIO[5]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[5]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[5]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[5]~output .OUT_POWERUP = 1'b0;
defparam \CIO[5]~output .OE_REG_MODE = 1'b0;
defparam \CIO[5]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[5]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[5]~output .OE_POWERUP = 1'b0;
defparam \CIO[5]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[5]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[5]~output .CFG_SLR = 1'b0;
defparam \CIO[5]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[5]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[5]~output .CFG_KEEP = 2'b00;
defparam \CIO[5]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[5]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[5]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[5]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[5]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[5]~output .OUT_DELAY = 1'b0;
defparam \CIO[5]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[5]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[6]~output (
	.padio(CIO[6]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[6]~input_o ),
	.regout());
defparam \CIO[6]~output .coord_x = 5;
defparam \CIO[6]~output .coord_y = 9;
defparam \CIO[6]~output .coord_z = 1;
defparam \CIO[6]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[6]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[6]~output .IN_POWERUP = 1'b0;
defparam \CIO[6]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[6]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[6]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[6]~output .OUT_POWERUP = 1'b0;
defparam \CIO[6]~output .OE_REG_MODE = 1'b0;
defparam \CIO[6]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[6]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[6]~output .OE_POWERUP = 1'b0;
defparam \CIO[6]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[6]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[6]~output .CFG_SLR = 1'b0;
defparam \CIO[6]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[6]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[6]~output .CFG_KEEP = 2'b00;
defparam \CIO[6]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[6]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[6]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[6]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[6]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[6]~output .OUT_DELAY = 1'b0;
defparam \CIO[6]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[6]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[7]~output (
	.padio(CIO[7]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[7]~input_o ),
	.regout());
defparam \CIO[7]~output .coord_x = 5;
defparam \CIO[7]~output .coord_y = 9;
defparam \CIO[7]~output .coord_z = 0;
defparam \CIO[7]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[7]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[7]~output .IN_POWERUP = 1'b0;
defparam \CIO[7]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[7]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[7]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[7]~output .OUT_POWERUP = 1'b0;
defparam \CIO[7]~output .OE_REG_MODE = 1'b0;
defparam \CIO[7]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[7]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[7]~output .OE_POWERUP = 1'b0;
defparam \CIO[7]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[7]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[7]~output .CFG_SLR = 1'b0;
defparam \CIO[7]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[7]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[7]~output .CFG_KEEP = 2'b00;
defparam \CIO[7]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[7]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[7]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[7]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[7]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[7]~output .OUT_DELAY = 1'b0;
defparam \CIO[7]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[7]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[8]~output (
	.padio(CIO[8]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[8]~input_o ),
	.regout());
defparam \CIO[8]~output .coord_x = 4;
defparam \CIO[8]~output .coord_y = 9;
defparam \CIO[8]~output .coord_z = 2;
defparam \CIO[8]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[8]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[8]~output .IN_POWERUP = 1'b0;
defparam \CIO[8]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[8]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[8]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[8]~output .OUT_POWERUP = 1'b0;
defparam \CIO[8]~output .OE_REG_MODE = 1'b0;
defparam \CIO[8]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[8]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[8]~output .OE_POWERUP = 1'b0;
defparam \CIO[8]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[8]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[8]~output .CFG_SLR = 1'b0;
defparam \CIO[8]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[8]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[8]~output .CFG_KEEP = 2'b00;
defparam \CIO[8]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[8]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[8]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[8]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[8]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[8]~output .OUT_DELAY = 1'b0;
defparam \CIO[8]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[8]~output .IN_REG_DELAY = 3'b000;

alta_rio \CIO[9]~output (
	.padio(CIO[9]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CIO[9]~input_o ),
	.regout());
defparam \CIO[9]~output .coord_x = 4;
defparam \CIO[9]~output .coord_y = 9;
defparam \CIO[9]~output .coord_z = 0;
defparam \CIO[9]~output .IN_ASYNC_MODE = 1'b0;
defparam \CIO[9]~output .IN_SYNC_MODE = 1'b0;
defparam \CIO[9]~output .IN_POWERUP = 1'b0;
defparam \CIO[9]~output .OUT_REG_MODE = 1'b0;
defparam \CIO[9]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CIO[9]~output .OUT_SYNC_MODE = 1'b0;
defparam \CIO[9]~output .OUT_POWERUP = 1'b0;
defparam \CIO[9]~output .OE_REG_MODE = 1'b0;
defparam \CIO[9]~output .OE_ASYNC_MODE = 1'b0;
defparam \CIO[9]~output .OE_SYNC_MODE = 1'b0;
defparam \CIO[9]~output .OE_POWERUP = 1'b0;
defparam \CIO[9]~output .CFG_TRI_INPUT = 1'b0;
defparam \CIO[9]~output .CFG_PULL_UP = 1'b0;
defparam \CIO[9]~output .CFG_SLR = 1'b0;
defparam \CIO[9]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CIO[9]~output .CFG_PDRCTRL = 4'b0010;
defparam \CIO[9]~output .CFG_KEEP = 2'b00;
defparam \CIO[9]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CIO[9]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CIO[9]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CIO[9]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CIO[9]~output .DPCLK_DELAY = 4'b0000;
defparam \CIO[9]~output .OUT_DELAY = 1'b0;
defparam \CIO[9]~output .IN_DATA_DELAY = 3'b000;
defparam \CIO[9]~output .IN_REG_DELAY = 3'b000;

alta_rio \CLK~input (
	.padio(CLK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CLK~input_o ),
	.regout());
defparam \CLK~input .coord_x = 4;
defparam \CLK~input .coord_y = 1;
defparam \CLK~input .coord_z = 0;
defparam \CLK~input .IN_ASYNC_MODE = 1'b0;
defparam \CLK~input .IN_SYNC_MODE = 1'b0;
defparam \CLK~input .IN_POWERUP = 1'b0;
defparam \CLK~input .OUT_REG_MODE = 1'b0;
defparam \CLK~input .OUT_ASYNC_MODE = 1'b0;
defparam \CLK~input .OUT_SYNC_MODE = 1'b0;
defparam \CLK~input .OUT_POWERUP = 1'b0;
defparam \CLK~input .OE_REG_MODE = 1'b0;
defparam \CLK~input .OE_ASYNC_MODE = 1'b0;
defparam \CLK~input .OE_SYNC_MODE = 1'b0;
defparam \CLK~input .OE_POWERUP = 1'b0;
defparam \CLK~input .CFG_TRI_INPUT = 1'b0;
defparam \CLK~input .CFG_PULL_UP = 1'b0;
defparam \CLK~input .CFG_SLR = 1'b0;
defparam \CLK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \CLK~input .CFG_PDRCTRL = 4'b0010;
defparam \CLK~input .CFG_KEEP = 2'b00;
defparam \CLK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \CLK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CLK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \CLK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \CLK~input .DPCLK_DELAY = 4'b0000;
defparam \CLK~input .OUT_DELAY = 1'b0;
defparam \CLK~input .IN_DATA_DELAY = 3'b000;
defparam \CLK~input .IN_REG_DELAY = 3'b000;

alta_rio \DATA[0]~output (
	.padio(DATA[0]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DATA[0]~input_o ),
	.regout());
defparam \DATA[0]~output .coord_x = 2;
defparam \DATA[0]~output .coord_y = 1;
defparam \DATA[0]~output .coord_z = 0;
defparam \DATA[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \DATA[0]~output .IN_SYNC_MODE = 1'b0;
defparam \DATA[0]~output .IN_POWERUP = 1'b0;
defparam \DATA[0]~output .OUT_REG_MODE = 1'b0;
defparam \DATA[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \DATA[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \DATA[0]~output .OUT_POWERUP = 1'b0;
defparam \DATA[0]~output .OE_REG_MODE = 1'b0;
defparam \DATA[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \DATA[0]~output .OE_SYNC_MODE = 1'b0;
defparam \DATA[0]~output .OE_POWERUP = 1'b0;
defparam \DATA[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \DATA[0]~output .CFG_PULL_UP = 1'b0;
defparam \DATA[0]~output .CFG_SLR = 1'b0;
defparam \DATA[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DATA[0]~output .CFG_PDRCTRL = 4'b0010;
defparam \DATA[0]~output .CFG_KEEP = 2'b00;
defparam \DATA[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DATA[0]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DATA[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DATA[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DATA[0]~output .DPCLK_DELAY = 4'b0000;
defparam \DATA[0]~output .OUT_DELAY = 1'b0;
defparam \DATA[0]~output .IN_DATA_DELAY = 3'b000;
defparam \DATA[0]~output .IN_REG_DELAY = 3'b000;

alta_rio \DATA[1]~output (
	.padio(DATA[1]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DATA[1]~input_o ),
	.regout());
defparam \DATA[1]~output .coord_x = 7;
defparam \DATA[1]~output .coord_y = 1;
defparam \DATA[1]~output .coord_z = 0;
defparam \DATA[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \DATA[1]~output .IN_SYNC_MODE = 1'b0;
defparam \DATA[1]~output .IN_POWERUP = 1'b0;
defparam \DATA[1]~output .OUT_REG_MODE = 1'b0;
defparam \DATA[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \DATA[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \DATA[1]~output .OUT_POWERUP = 1'b0;
defparam \DATA[1]~output .OE_REG_MODE = 1'b0;
defparam \DATA[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \DATA[1]~output .OE_SYNC_MODE = 1'b0;
defparam \DATA[1]~output .OE_POWERUP = 1'b0;
defparam \DATA[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \DATA[1]~output .CFG_PULL_UP = 1'b0;
defparam \DATA[1]~output .CFG_SLR = 1'b0;
defparam \DATA[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DATA[1]~output .CFG_PDRCTRL = 4'b0010;
defparam \DATA[1]~output .CFG_KEEP = 2'b00;
defparam \DATA[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DATA[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DATA[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DATA[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DATA[1]~output .DPCLK_DELAY = 4'b0000;
defparam \DATA[1]~output .OUT_DELAY = 1'b0;
defparam \DATA[1]~output .IN_DATA_DELAY = 3'b000;
defparam \DATA[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \DATA[2]~output (
	.padio(DATA[2]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DATA[2]~input_o ),
	.regout());
defparam \DATA[2]~output .coord_x = 6;
defparam \DATA[2]~output .coord_y = 9;
defparam \DATA[2]~output .coord_z = 2;
defparam \DATA[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \DATA[2]~output .IN_SYNC_MODE = 1'b0;
defparam \DATA[2]~output .IN_POWERUP = 1'b0;
defparam \DATA[2]~output .OUT_REG_MODE = 1'b0;
defparam \DATA[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \DATA[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \DATA[2]~output .OUT_POWERUP = 1'b0;
defparam \DATA[2]~output .OE_REG_MODE = 1'b0;
defparam \DATA[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \DATA[2]~output .OE_SYNC_MODE = 1'b0;
defparam \DATA[2]~output .OE_POWERUP = 1'b0;
defparam \DATA[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \DATA[2]~output .CFG_PULL_UP = 1'b0;
defparam \DATA[2]~output .CFG_SLR = 1'b0;
defparam \DATA[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DATA[2]~output .CFG_PDRCTRL = 4'b0010;
defparam \DATA[2]~output .CFG_KEEP = 2'b00;
defparam \DATA[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DATA[2]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DATA[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DATA[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DATA[2]~output .DPCLK_DELAY = 4'b0000;
defparam \DATA[2]~output .OUT_DELAY = 1'b0;
defparam \DATA[2]~output .IN_DATA_DELAY = 3'b000;
defparam \DATA[2]~output .IN_REG_DELAY = 3'b000;

alta_rio \DATA[3]~output (
	.padio(DATA[3]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DATA[3]~input_o ),
	.regout());
defparam \DATA[3]~output .coord_x = 1;
defparam \DATA[3]~output .coord_y = 9;
defparam \DATA[3]~output .coord_z = 1;
defparam \DATA[3]~output .IN_ASYNC_MODE = 1'b0;
defparam \DATA[3]~output .IN_SYNC_MODE = 1'b0;
defparam \DATA[3]~output .IN_POWERUP = 1'b0;
defparam \DATA[3]~output .OUT_REG_MODE = 1'b0;
defparam \DATA[3]~output .OUT_ASYNC_MODE = 1'b0;
defparam \DATA[3]~output .OUT_SYNC_MODE = 1'b0;
defparam \DATA[3]~output .OUT_POWERUP = 1'b0;
defparam \DATA[3]~output .OE_REG_MODE = 1'b0;
defparam \DATA[3]~output .OE_ASYNC_MODE = 1'b0;
defparam \DATA[3]~output .OE_SYNC_MODE = 1'b0;
defparam \DATA[3]~output .OE_POWERUP = 1'b0;
defparam \DATA[3]~output .CFG_TRI_INPUT = 1'b0;
defparam \DATA[3]~output .CFG_PULL_UP = 1'b0;
defparam \DATA[3]~output .CFG_SLR = 1'b0;
defparam \DATA[3]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DATA[3]~output .CFG_PDRCTRL = 4'b0010;
defparam \DATA[3]~output .CFG_KEEP = 2'b00;
defparam \DATA[3]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DATA[3]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DATA[3]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DATA[3]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DATA[3]~output .DPCLK_DELAY = 4'b0000;
defparam \DATA[3]~output .OUT_DELAY = 1'b0;
defparam \DATA[3]~output .IN_DATA_DELAY = 3'b000;
defparam \DATA[3]~output .IN_REG_DELAY = 3'b000;

alta_rio \DATA[4]~output (
	.padio(DATA[4]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DATA[4]~input_o ),
	.regout());
defparam \DATA[4]~output .coord_x = 0;
defparam \DATA[4]~output .coord_y = 9;
defparam \DATA[4]~output .coord_z = 0;
defparam \DATA[4]~output .IN_ASYNC_MODE = 1'b0;
defparam \DATA[4]~output .IN_SYNC_MODE = 1'b0;
defparam \DATA[4]~output .IN_POWERUP = 1'b0;
defparam \DATA[4]~output .OUT_REG_MODE = 1'b0;
defparam \DATA[4]~output .OUT_ASYNC_MODE = 1'b0;
defparam \DATA[4]~output .OUT_SYNC_MODE = 1'b0;
defparam \DATA[4]~output .OUT_POWERUP = 1'b0;
defparam \DATA[4]~output .OE_REG_MODE = 1'b0;
defparam \DATA[4]~output .OE_ASYNC_MODE = 1'b0;
defparam \DATA[4]~output .OE_SYNC_MODE = 1'b0;
defparam \DATA[4]~output .OE_POWERUP = 1'b0;
defparam \DATA[4]~output .CFG_TRI_INPUT = 1'b0;
defparam \DATA[4]~output .CFG_PULL_UP = 1'b0;
defparam \DATA[4]~output .CFG_SLR = 1'b0;
defparam \DATA[4]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DATA[4]~output .CFG_PDRCTRL = 4'b0010;
defparam \DATA[4]~output .CFG_KEEP = 2'b00;
defparam \DATA[4]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DATA[4]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DATA[4]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DATA[4]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DATA[4]~output .DPCLK_DELAY = 4'b0000;
defparam \DATA[4]~output .OUT_DELAY = 1'b0;
defparam \DATA[4]~output .IN_DATA_DELAY = 3'b000;
defparam \DATA[4]~output .IN_REG_DELAY = 3'b000;

alta_rio \DATA[5]~output (
	.padio(DATA[5]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DATA[5]~input_o ),
	.regout());
defparam \DATA[5]~output .coord_x = 0;
defparam \DATA[5]~output .coord_y = 9;
defparam \DATA[5]~output .coord_z = 2;
defparam \DATA[5]~output .IN_ASYNC_MODE = 1'b0;
defparam \DATA[5]~output .IN_SYNC_MODE = 1'b0;
defparam \DATA[5]~output .IN_POWERUP = 1'b0;
defparam \DATA[5]~output .OUT_REG_MODE = 1'b0;
defparam \DATA[5]~output .OUT_ASYNC_MODE = 1'b0;
defparam \DATA[5]~output .OUT_SYNC_MODE = 1'b0;
defparam \DATA[5]~output .OUT_POWERUP = 1'b0;
defparam \DATA[5]~output .OE_REG_MODE = 1'b0;
defparam \DATA[5]~output .OE_ASYNC_MODE = 1'b0;
defparam \DATA[5]~output .OE_SYNC_MODE = 1'b0;
defparam \DATA[5]~output .OE_POWERUP = 1'b0;
defparam \DATA[5]~output .CFG_TRI_INPUT = 1'b0;
defparam \DATA[5]~output .CFG_PULL_UP = 1'b0;
defparam \DATA[5]~output .CFG_SLR = 1'b0;
defparam \DATA[5]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DATA[5]~output .CFG_PDRCTRL = 4'b0010;
defparam \DATA[5]~output .CFG_KEEP = 2'b00;
defparam \DATA[5]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DATA[5]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DATA[5]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DATA[5]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DATA[5]~output .DPCLK_DELAY = 4'b0000;
defparam \DATA[5]~output .OUT_DELAY = 1'b0;
defparam \DATA[5]~output .IN_DATA_DELAY = 3'b000;
defparam \DATA[5]~output .IN_REG_DELAY = 3'b000;

alta_rio \DATA[6]~output (
	.padio(DATA[6]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DATA[6]~input_o ),
	.regout());
defparam \DATA[6]~output .coord_x = 1;
defparam \DATA[6]~output .coord_y = 9;
defparam \DATA[6]~output .coord_z = 3;
defparam \DATA[6]~output .IN_ASYNC_MODE = 1'b0;
defparam \DATA[6]~output .IN_SYNC_MODE = 1'b0;
defparam \DATA[6]~output .IN_POWERUP = 1'b0;
defparam \DATA[6]~output .OUT_REG_MODE = 1'b0;
defparam \DATA[6]~output .OUT_ASYNC_MODE = 1'b0;
defparam \DATA[6]~output .OUT_SYNC_MODE = 1'b0;
defparam \DATA[6]~output .OUT_POWERUP = 1'b0;
defparam \DATA[6]~output .OE_REG_MODE = 1'b0;
defparam \DATA[6]~output .OE_ASYNC_MODE = 1'b0;
defparam \DATA[6]~output .OE_SYNC_MODE = 1'b0;
defparam \DATA[6]~output .OE_POWERUP = 1'b0;
defparam \DATA[6]~output .CFG_TRI_INPUT = 1'b0;
defparam \DATA[6]~output .CFG_PULL_UP = 1'b0;
defparam \DATA[6]~output .CFG_SLR = 1'b0;
defparam \DATA[6]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DATA[6]~output .CFG_PDRCTRL = 4'b0010;
defparam \DATA[6]~output .CFG_KEEP = 2'b00;
defparam \DATA[6]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DATA[6]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DATA[6]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DATA[6]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DATA[6]~output .DPCLK_DELAY = 4'b0000;
defparam \DATA[6]~output .OUT_DELAY = 1'b0;
defparam \DATA[6]~output .IN_DATA_DELAY = 3'b000;
defparam \DATA[6]~output .IN_REG_DELAY = 3'b000;

alta_rio \DATA[7]~output (
	.padio(DATA[7]),
	.datain(vcc),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\DATA[7]~input_o ),
	.regout());
defparam \DATA[7]~output .coord_x = 2;
defparam \DATA[7]~output .coord_y = 9;
defparam \DATA[7]~output .coord_z = 0;
defparam \DATA[7]~output .IN_ASYNC_MODE = 1'b0;
defparam \DATA[7]~output .IN_SYNC_MODE = 1'b0;
defparam \DATA[7]~output .IN_POWERUP = 1'b0;
defparam \DATA[7]~output .OUT_REG_MODE = 1'b0;
defparam \DATA[7]~output .OUT_ASYNC_MODE = 1'b0;
defparam \DATA[7]~output .OUT_SYNC_MODE = 1'b0;
defparam \DATA[7]~output .OUT_POWERUP = 1'b0;
defparam \DATA[7]~output .OE_REG_MODE = 1'b0;
defparam \DATA[7]~output .OE_ASYNC_MODE = 1'b0;
defparam \DATA[7]~output .OE_SYNC_MODE = 1'b0;
defparam \DATA[7]~output .OE_POWERUP = 1'b0;
defparam \DATA[7]~output .CFG_TRI_INPUT = 1'b0;
defparam \DATA[7]~output .CFG_PULL_UP = 1'b0;
defparam \DATA[7]~output .CFG_SLR = 1'b0;
defparam \DATA[7]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \DATA[7]~output .CFG_PDRCTRL = 4'b0010;
defparam \DATA[7]~output .CFG_KEEP = 2'b00;
defparam \DATA[7]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \DATA[7]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \DATA[7]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \DATA[7]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \DATA[7]~output .DPCLK_DELAY = 4'b0000;
defparam \DATA[7]~output .OUT_DELAY = 1'b0;
defparam \DATA[7]~output .IN_DATA_DELAY = 3'b000;
defparam \DATA[7]~output .IN_REG_DELAY = 3'b000;

alta_rio \KEY~input (
	.padio(KEY),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\KEY~input_o ),
	.regout());
defparam \KEY~input .coord_x = 9;
defparam \KEY~input .coord_y = 0;
defparam \KEY~input .coord_z = 3;
defparam \KEY~input .IN_ASYNC_MODE = 1'b0;
defparam \KEY~input .IN_SYNC_MODE = 1'b0;
defparam \KEY~input .IN_POWERUP = 1'b0;
defparam \KEY~input .OUT_REG_MODE = 1'b0;
defparam \KEY~input .OUT_ASYNC_MODE = 1'b0;
defparam \KEY~input .OUT_SYNC_MODE = 1'b0;
defparam \KEY~input .OUT_POWERUP = 1'b0;
defparam \KEY~input .OE_REG_MODE = 1'b0;
defparam \KEY~input .OE_ASYNC_MODE = 1'b0;
defparam \KEY~input .OE_SYNC_MODE = 1'b0;
defparam \KEY~input .OE_POWERUP = 1'b0;
defparam \KEY~input .CFG_TRI_INPUT = 1'b0;
defparam \KEY~input .CFG_PULL_UP = 1'b0;
defparam \KEY~input .CFG_SLR = 1'b0;
defparam \KEY~input .CFG_OPEN_DRAIN = 1'b0;
defparam \KEY~input .CFG_PDRCTRL = 4'b0010;
defparam \KEY~input .CFG_KEEP = 2'b00;
defparam \KEY~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \KEY~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \KEY~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \KEY~input .CFG_LVDS_IN_EN = 1'b0;
defparam \KEY~input .DPCLK_DELAY = 4'b0000;
defparam \KEY~input .OUT_DELAY = 1'b0;
defparam \KEY~input .IN_DATA_DELAY = 3'b000;
defparam \KEY~input .IN_REG_DELAY = 3'b000;

alta_rio \LED[0]~output (
	.padio(LED[0]),
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LED[0]~output .coord_x = 6;
defparam \LED[0]~output .coord_y = 1;
defparam \LED[0]~output .coord_z = 2;
defparam \LED[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \LED[0]~output .IN_SYNC_MODE = 1'b0;
defparam \LED[0]~output .IN_POWERUP = 1'b0;
defparam \LED[0]~output .OUT_REG_MODE = 1'b0;
defparam \LED[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \LED[0]~output .OUT_POWERUP = 1'b0;
defparam \LED[0]~output .OE_REG_MODE = 1'b0;
defparam \LED[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \LED[0]~output .OE_SYNC_MODE = 1'b0;
defparam \LED[0]~output .OE_POWERUP = 1'b0;
defparam \LED[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \LED[0]~output .CFG_PULL_UP = 1'b0;
defparam \LED[0]~output .CFG_SLR = 1'b0;
defparam \LED[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED[0]~output .CFG_PDRCTRL = 4'b0010;
defparam \LED[0]~output .CFG_KEEP = 2'b00;
defparam \LED[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED[0]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED[0]~output .DPCLK_DELAY = 4'b0000;
defparam \LED[0]~output .OUT_DELAY = 1'b0;
defparam \LED[0]~output .IN_DATA_DELAY = 3'b000;
defparam \LED[0]~output .IN_REG_DELAY = 3'b000;

alta_rio \LED[1]~output (
	.padio(LED[1]),
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LED[1]~output .coord_x = 6;
defparam \LED[1]~output .coord_y = 1;
defparam \LED[1]~output .coord_z = 3;
defparam \LED[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \LED[1]~output .IN_SYNC_MODE = 1'b0;
defparam \LED[1]~output .IN_POWERUP = 1'b0;
defparam \LED[1]~output .OUT_REG_MODE = 1'b0;
defparam \LED[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \LED[1]~output .OUT_POWERUP = 1'b0;
defparam \LED[1]~output .OE_REG_MODE = 1'b0;
defparam \LED[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \LED[1]~output .OE_SYNC_MODE = 1'b0;
defparam \LED[1]~output .OE_POWERUP = 1'b0;
defparam \LED[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \LED[1]~output .CFG_PULL_UP = 1'b0;
defparam \LED[1]~output .CFG_SLR = 1'b0;
defparam \LED[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED[1]~output .CFG_PDRCTRL = 4'b0010;
defparam \LED[1]~output .CFG_KEEP = 2'b00;
defparam \LED[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED[1]~output .DPCLK_DELAY = 4'b0000;
defparam \LED[1]~output .OUT_DELAY = 1'b0;
defparam \LED[1]~output .IN_DATA_DELAY = 3'b000;
defparam \LED[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \nRD~input (
	.padio(nRD),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\nRD~input_o ),
	.regout());
defparam \nRD~input .coord_x = 2;
defparam \nRD~input .coord_y = 1;
defparam \nRD~input .coord_z = 2;
defparam \nRD~input .IN_ASYNC_MODE = 1'b0;
defparam \nRD~input .IN_SYNC_MODE = 1'b0;
defparam \nRD~input .IN_POWERUP = 1'b0;
defparam \nRD~input .OUT_REG_MODE = 1'b0;
defparam \nRD~input .OUT_ASYNC_MODE = 1'b0;
defparam \nRD~input .OUT_SYNC_MODE = 1'b0;
defparam \nRD~input .OUT_POWERUP = 1'b0;
defparam \nRD~input .OE_REG_MODE = 1'b0;
defparam \nRD~input .OE_ASYNC_MODE = 1'b0;
defparam \nRD~input .OE_SYNC_MODE = 1'b0;
defparam \nRD~input .OE_POWERUP = 1'b0;
defparam \nRD~input .CFG_TRI_INPUT = 1'b0;
defparam \nRD~input .CFG_PULL_UP = 1'b0;
defparam \nRD~input .CFG_SLR = 1'b0;
defparam \nRD~input .CFG_OPEN_DRAIN = 1'b0;
defparam \nRD~input .CFG_PDRCTRL = 4'b0010;
defparam \nRD~input .CFG_KEEP = 2'b00;
defparam \nRD~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \nRD~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \nRD~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \nRD~input .CFG_LVDS_IN_EN = 1'b0;
defparam \nRD~input .DPCLK_DELAY = 4'b0000;
defparam \nRD~input .OUT_DELAY = 1'b0;
defparam \nRD~input .IN_DATA_DELAY = 3'b000;
defparam \nRD~input .IN_REG_DELAY = 3'b000;

alta_rio \nRST~input (
	.padio(nRST),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\nRST~input_o ),
	.regout());
defparam \nRST~input .coord_x = 2;
defparam \nRST~input .coord_y = 9;
defparam \nRST~input .coord_z = 2;
defparam \nRST~input .IN_ASYNC_MODE = 1'b0;
defparam \nRST~input .IN_SYNC_MODE = 1'b0;
defparam \nRST~input .IN_POWERUP = 1'b0;
defparam \nRST~input .OUT_REG_MODE = 1'b0;
defparam \nRST~input .OUT_ASYNC_MODE = 1'b0;
defparam \nRST~input .OUT_SYNC_MODE = 1'b0;
defparam \nRST~input .OUT_POWERUP = 1'b0;
defparam \nRST~input .OE_REG_MODE = 1'b0;
defparam \nRST~input .OE_ASYNC_MODE = 1'b0;
defparam \nRST~input .OE_SYNC_MODE = 1'b0;
defparam \nRST~input .OE_POWERUP = 1'b0;
defparam \nRST~input .CFG_TRI_INPUT = 1'b0;
defparam \nRST~input .CFG_PULL_UP = 1'b0;
defparam \nRST~input .CFG_SLR = 1'b0;
defparam \nRST~input .CFG_OPEN_DRAIN = 1'b0;
defparam \nRST~input .CFG_PDRCTRL = 4'b0010;
defparam \nRST~input .CFG_KEEP = 2'b00;
defparam \nRST~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \nRST~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \nRST~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \nRST~input .CFG_LVDS_IN_EN = 1'b0;
defparam \nRST~input .DPCLK_DELAY = 4'b0000;
defparam \nRST~input .OUT_DELAY = 1'b0;
defparam \nRST~input .IN_DATA_DELAY = 3'b000;
defparam \nRST~input .IN_REG_DELAY = 3'b000;

alta_rio \nWR~input (
	.padio(nWR),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\nWR~input_o ),
	.regout());
defparam \nWR~input .coord_x = 4;
defparam \nWR~input .coord_y = 1;
defparam \nWR~input .coord_z = 2;
defparam \nWR~input .IN_ASYNC_MODE = 1'b0;
defparam \nWR~input .IN_SYNC_MODE = 1'b0;
defparam \nWR~input .IN_POWERUP = 1'b0;
defparam \nWR~input .OUT_REG_MODE = 1'b0;
defparam \nWR~input .OUT_ASYNC_MODE = 1'b0;
defparam \nWR~input .OUT_SYNC_MODE = 1'b0;
defparam \nWR~input .OUT_POWERUP = 1'b0;
defparam \nWR~input .OE_REG_MODE = 1'b0;
defparam \nWR~input .OE_ASYNC_MODE = 1'b0;
defparam \nWR~input .OE_SYNC_MODE = 1'b0;
defparam \nWR~input .OE_POWERUP = 1'b0;
defparam \nWR~input .CFG_TRI_INPUT = 1'b0;
defparam \nWR~input .CFG_PULL_UP = 1'b0;
defparam \nWR~input .CFG_SLR = 1'b0;
defparam \nWR~input .CFG_OPEN_DRAIN = 1'b0;
defparam \nWR~input .CFG_PDRCTRL = 4'b0010;
defparam \nWR~input .CFG_KEEP = 2'b00;
defparam \nWR~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \nWR~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \nWR~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \nWR~input .CFG_LVDS_IN_EN = 1'b0;
defparam \nWR~input .DPCLK_DELAY = 4'b0000;
defparam \nWR~input .OUT_DELAY = 1'b0;
defparam \nWR~input .IN_DATA_DELAY = 3'b000;
defparam \nWR~input .IN_REG_DELAY = 3'b000;

endmodule
