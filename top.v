module top(
    input [7:0]sw,
    output [5:0] led
);

    light uut(
    
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])
);
    
    adder ut(
    
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .carry(led[2])
    
);
    wire z;
    
    full_adder t(
    
    .A(sw[4]),
    .B(sw[6]),
    .Y(led[3]),
    .C_out(z)
    
    
    
    
);

  full_adder u(
    
    .A(sw[5]),
    .B(sw[7]),
    .C_in(z),
    .Y(led[4]),
    .C_out(led[5])
 
    
);

endmodule 
   
    