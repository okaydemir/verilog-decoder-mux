`timescale 1ns / 1ps

module mux8x3(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input sel0,
    input sel1,
    input sel2,
    output reg out
    );

always @(i0,i1,i2,i3,i4,i5,i6,i7,sel0,sel1,sel2)
begin

if( sel2==0 && sel1==0 && sel0==0 )
		begin
			out = i0;
		end
		
else if( sel2==0 && sel1==0 && sel0==1 )
		begin
			out = i1;
		end

else if( sel2==0 && sel1==1 && sel0==0 )
		begin
			out = i2;
		end
		
else if( sel2==0 && sel1==1 && sel0==1 )
		begin
			out = i3;
		end
else if( sel2==1 && sel1==0 && sel0==0 )
		begin
			out = i4;
		end
		
else if( sel2==1 && sel1==0 && sel0==1 )
		begin
			out = i5;
		end

else if( sel2==1 && sel1==1 && sel0==0 )
		begin
			out = i6;
		end
		
else if( sel2==1 && sel1==1 && sel0==1 )
		begin
			out = i7;
		end


end


endmodule
