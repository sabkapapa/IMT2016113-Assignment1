 	
	
	AREA appcode, CODE, READONLY

	EXPORT __main
	ENTRY

__main FUNCTION
 
	MOV R5,#1;    WE FIRSTLY KEEP 1 IN R5, 1 IS THE SECOND FIB. NO.
	MOV R6,#0;    FIRST FIB NO. INTO REG R6.
	MOV R9,#9;    WE WANT THE N=10th FIB. NO. SO TAKE R9 TO BE N-1=9.
	
LABEL	MOV R7,R5;  R7 IS A TEMPORARY REGISTER THAT STORES THE NEXT FIB. NO.
		ADD R5,R5,R6; ADDING THE 2 PREVIOUS NO.S TO OBTAIN THE NEXT FIB. NO.
		MOV R6,R7;   THE PREVIOUS NEXT FIB. NO. BECOMES THE CURRENT PREVIOUS FIB. NO. AND WE STORE THAT IN R6.
		SUBS R9,R9,#1; BASICALLY REDUCING OUR COUNT, SUBS IS AN INSTRUCTION THAT BASICALLY SETS THE ZERO FLAG IF R9 BECOMES 0.
		
		BNE LABEL;  BNE IS AN INSTRUCTION WHICH LEADS BACK TO THE LABEL ADDRESS WHERE THE FN HAS TO RUN AGAIN UNTILL UNLESS R9=0.
	
	;R6 WILL GIVE OUR Nth FIB. NO. (THE OUTPUT)
 
 
stop B stop; STOPS PROG.  
	ENDFUNC
	END	
	
	
	
	
	
	
	
	