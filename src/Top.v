module Top
(
    input CLK,

    /* ADC Interface connections */
    input [11:0] MISO,
    output ADC_CLK,

    /* DVP Interface connections */
    output [11:0] DVP_DATA,
    output DVP_PCLK,
    output DVP_VSYNC,
    output DVP_HSYNC
);

wire pll_clkout;

assign ADC_CLK = pll_clkout;
assign DVP_PCLK = pll_clkout;

localparam FBDIV = 6'b111110;
localparam IDIV = 6'b110111;
localparam ODIV = 6'b000000;

Gowin_rPLL pll
(
    .clkout(pll_clkout), 
    .lock(LOCK), 
    .clkin(CLK), 
    .fbdsel(FBDIV),
    .idsel(IDIV),
    .odsel(ODIV)
);

reg [11:0] buffer = 0;
assign DVP_DATA[11] = buffer[11];
assign DVP_DATA[10] = buffer[10];
assign DVP_DATA[9] = buffer[9];
assign DVP_DATA[8] = buffer[8];
assign DVP_DATA[7] = buffer[7];
assign DVP_DATA[6] = buffer[6];
assign DVP_DATA[5] = buffer[5];
assign DVP_DATA[4] = buffer[4];
assign DVP_DATA[3] = buffer[3];
assign DVP_DATA[2] = buffer[2];
assign DVP_DATA[1] = buffer[1];
assign DVP_DATA[0] = buffer[0];

always @ (posedge pll_clkout) begin
    buffer[11] <= MISO[11];
    buffer[10] <= MISO[10];
    buffer[9] <= MISO[9];
    buffer[8] <= MISO[8];
    buffer[7] <= MISO[7];
    buffer[6] <= MISO[6];
    buffer[5] <= MISO[5];
    buffer[4] <= MISO[4];
    buffer[3] <= MISO[3];
    buffer[2] <= MISO[2];
    buffer[1] <= MISO[1];
    buffer[0] <= MISO[0];


end

endmodule