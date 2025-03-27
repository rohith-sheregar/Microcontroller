AREA Q4, CODE, READONLY
ENTRY

MOV r0, #11
MOV r1, #2

check
CMP r1, r0
BEQ prime
UDIV r2, r0, r1
MUL r3, r2, r1
CMP r3, r0
BEQ not_prime
ADD r1, r1, #1
B check

prime
B finish

not_prime
B finish

finish
B .

END