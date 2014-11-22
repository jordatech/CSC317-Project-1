Written by: Kyle Danielson 11/10/14 with Code::Blocks

Format A === Format   OPName   Rdestination   Rsource1   Rsource2
Format B === Format   OPName   Rdestination   Rsource1               ImmediateValue
Format C === Format   OPName                                         ImmediateValue

examples

A// A Add R3,R1,R2

adds contents of register 1 and register 2 and stores into register 3

B// B LD R3,R0,#255

loads the signed Value 255 into register 3

C// C BRA #255

adds the 2's complement of 255 to the PC




insert one instruction per line into the file named "Instructions.txt"

Hex value instructions will be output in file named "HexCodes.txt", these codes go directly into the .MIF