module light(
    input downstairs, upstairs,
    output stair_light// Declare downstairs and upstairs input
    // Declare stair light output
);

   assign stair_light = (~downstairs & upstairs) | (downstairs & ~upstairs); // Enter logic equation here

endmodule