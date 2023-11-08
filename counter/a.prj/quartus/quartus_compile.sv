module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] count_start
	, output logic [0:0] count_busy
	, output logic [0:0] count_done
	, input logic [0:0] count_stall
	, output logic [31:0] count_returndata
	);

	logic [0:0] count_start_reg;
	logic [0:0] count_busy_reg;
	logic [0:0] count_done_reg;
	logic [0:0] count_stall_reg;
	logic [31:0] count_returndata_reg;


	always @(posedge clock) begin
		count_start_reg <= count_start;
		count_busy <= count_busy_reg;
		count_done <= count_done_reg;
		count_stall_reg <= count_stall;
		count_returndata <= count_returndata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	count count_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(count_start_reg)
		, .busy(count_busy_reg)
		, .done(count_done_reg)
		, .stall(count_stall_reg)
		, .returndata(count_returndata_reg)
	);



endmodule
