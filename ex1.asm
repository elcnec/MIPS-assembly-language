		.data
inputMsg1:	.asciiz "Enter the value of x: "
inputMsg2:	.asciiz "Enter the value of y: "
outputMsg:	.asciiz "Sum = "

		.text
		
		li $v0,4	       #print the inputMsg1
		la $a0,inputMsg1
		syscall
		
		li $v0,5	         #read an integer number
		syscall
		add $t0,$v0,$zero         #move the value from $v0 to $t0 
		
		li $v0,4	          #print the inputMsg2
		la $a0,inputMsg2
		syscall
		
		li $v0,5	          #read an integer number
		syscall
		add $t1,$v0,$zero	  #move the value from $v0 to $t0 
		
			
		add $t2,$t0,$t1		#add x to y
		
		li $v0,4
		la $a0, outputMsg	#print outputMsg
		syscall
		
		li $v0,1		#print the result
		add $a0,$t2,$zero
		syscall
			
		li $v0,10	#exit
		syscall
	
		
			
				
		
