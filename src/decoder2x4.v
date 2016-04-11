`timescale 1ns / 1ps

module decoder2x4(
	 input i0,
    input i1,
    output reg o0,
    output reg o1,
    output reg o2,
    output reg o3
    );
	 
	 always @(i0,i1)
	 begin
	 
	 o0=0;
	 o1=0;
	 o2=0;
	 o3=0;
	 
	 if(i0==0&&i1==0)
	 begin
	 o0=1;
	 end
	 
	 else if(i0==0&&i1==1)
	 begin
	 o1=1;
	 end
	 
	 else if(i0==1&&i1==0)
	 begin
	 o2=1;
	 end
	 
	 else if(i0==1&&i1==1)
	 begin
	 o3=1;
	 end
	 
	 
	 end


endmodule
