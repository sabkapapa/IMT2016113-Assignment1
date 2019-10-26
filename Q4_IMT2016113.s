 	
	
	AREA appcode, CODE, READONLY

	EXPORT __main
	ENTRY

__main FUNCTION
	MOV R1, #1 ;   putting 1 in register R1 . 
	CMP R1, #2 ;   comparing R1 and 2.
	ITT LT      ;  If statement followed by less than flag condition.	
	MOVLT R2,#2 ;  
	IT LT      ; we have tried nesting another if but after running it showed error.
	MOVLT R3,#4    
stop B stop; STOPS PROG.  
	ENDFUNC
	END	
	
	
	
	
	
	
	
	