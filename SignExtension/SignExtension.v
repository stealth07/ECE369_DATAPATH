`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Computer Architecture
// 
// Module - SignExtension.v
// Description - Sign extension module.
////////////////////////////////////////////////////////////////////////////////
module SignExtension(in, out);

    /* A 16-Bit input word */
    input [15:0] in;
    
    /* A 32-Bit output word */
    output [31:0] out;
    
    assign out = (in[15] == 0) ? (in):(in | 'hffff0000);

endmodule
