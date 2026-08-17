`timescale 1ns/1ps

module elevator_controller_tb;

    reg clk;
    reg reset;
    reg [1:0] floor_request;

    wire [1:0] current_floor;

    // Connect elevator controller
    elevator_controller uut (
        .clk(clk),
        .reset(reset),
        .floor_request(floor_request),
        .current_floor(current_floor)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Create waveform file
        $dumpfile("output.vcd");
        $dumpvars(0, elevator_controller_tb);

        // Initial values
        clk = 0;
        reset = 1;
        floor_request = 2'd0;

        #10;

        // Release reset
        reset = 0;

        // Request floor 3
        floor_request = 2'd3;

        // Wait for elevator to reach floor 3
        #40;

        // Request floor 1
        floor_request = 2'd1;

        // Wait for elevator to reach floor 1
        #30;

        // Request floor 2
        floor_request = 2'd2;

        #20;

        $finish;

    end

endmodule