 	
	
	AREA appcode, CODE, READONLY

	EXPORT __main
	ENTRY

__main FUNCTION
 
	 MOV R5,#8;  TAKE A VALUE IN R5 REGISTER. 
	 MOV R6,#8;  TAKE YOUR SECOND NO. IN R6.
	 CMP R5,R6 ;  COMPARE INSTRUCTION BETWEEN R5 AND R6.
     BEQ LABEL2 ; IF EQUAL FLAG IS HIGH i.e R5=R6 JUMP TO LABEL2 DIRECTLY.
   

LABEL	  CMP R5,R6;     AGAIN LOOPING, COMPARE INSTRUCTION.
     	  ITE GT ;       IF CONDN. AND CHECKING GREATER THAN FLAG OF SPECIAL REGISTER IF SET HIGH.
		  SUBGT R5,R5,R6;   IF HIGH, SUBTRACT R5 AND R6 VALUE AND STORE IN R5.
		  SUBLE R6,R6,R5;   ELSE DO THE SAME AND STORE IN REGISTER R6.
	      CMP R5,R6;        COMPARING AGAIN TO MAKE SURE IT STAYS IN A WHILE LOOP.
	 BNE LABEL      ;        WHILE LOOPING IF NOT EQUAL TO ZERO.  
LABEL2         

 ; OUTPUT REFLECTS IN R5 REGISTER.

stop B stop; STOPS PROG.  
	ENDFUNC
	END	
	
	
	
	
	
	
	
	