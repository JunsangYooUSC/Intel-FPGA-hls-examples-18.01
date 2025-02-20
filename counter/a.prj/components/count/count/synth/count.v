// count.v

// Generated using ACDS version 19.2 57

`timescale 1 ps / 1 ps
module count (
		input  wire        clock,      //      clock.clk
		input  wire        resetn,     //      reset.reset_n
		input  wire        start,      //       call.valid
		output wire        busy,       //           .stall
		output wire        done,       //     return.valid
		input  wire        stall,      //           .stall
		output wire [31:0] returndata  // returndata.data
	);

	count_internal count_internal_inst (
		.clock      (clock),      //   input,   width = 1,      clock.clk
		.resetn     (resetn),     //   input,   width = 1,      reset.reset_n
		.start      (start),      //   input,   width = 1,       call.valid
		.busy       (busy),       //  output,   width = 1,           .stall
		.done       (done),       //  output,   width = 1,     return.valid
		.stall      (stall),      //   input,   width = 1,           .stall
		.returndata (returndata)  //  output,  width = 32, returndata.data
	);

endmodule
