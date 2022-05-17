asect 0x00
dc 0xff #sets Stack Pointer at the address 0xFF

ldi r1, IO3 #loads address of IO-3, IO-4 and IO-5 into  
ldi r2, IO4 #registers r1, r2 and r3
ldi r3, IO5

ld r1, r1 #loads ball's velocity into r1  
ld r2, r2 #loads x coordinate of the ball into r2
ld r3, r3 #loads y coordinate of the ball into r3

add r2,r1
add r1,r3

shra r1 #since r1 stores the value of the two speeds vx 
shra r1 #and vy, we shift the number 3 bits to the
shra r1 #right to get the value in 3 bit representation


#for input data
asect 0xf3 

Ports>
IO3: ds 1 #conatins ball's velocity and stores y coordinate of the right bat
IO4: ds 1 #contains x coordinate of the ball
IO5: ds 1 #contains y coordinate of the ball
EndPorts>

end