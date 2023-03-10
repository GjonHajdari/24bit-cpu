module DataMemory_test();

reg  [23:0] Address;
reg  [23:0] WriteData; 
reg  Clock;
reg  MemWrite;
reg MemRead;
wire [23:0] ReadData;

initial 
begin 
	#0 Clock =1'b0;
	#5 MemWrite = 1'b1; Address = 24'd2; WriteData=24'd7; MemRead=1'b0;
	#5 Clock=1'b1;
	#5 Clock=1'b0; MemWrite=1'b0;
	#5 MemRead=1'b1; Address=24'd2;
	#5 $stop;
end

DataMemory DM(Address, WriteData, Clock, MemWrite, MemRead, ReadData);
    

endmodule