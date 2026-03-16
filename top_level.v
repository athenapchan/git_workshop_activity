module top_level (
	/* Add your inputs here */
	
	input CLOCK_50,
		
	input [1:0]KEY,
		
	output [9:0]LEDR,
	
	input [9:0]SW
	
);

    nios_system u0 (
        .clk_clk       (CLOCK_50),       
        .reset_reset_n (KEY[0]), 
        .ledr_export   (LEDR[9:0]),   
        .sw_export     (SW[9:0])      
    );
	
	 
endmodule