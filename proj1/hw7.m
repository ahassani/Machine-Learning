clear all; close all; clc
a = [
sum(abs('YHGFREK' - 'LOLCATS'))
sum(abs('UNHCXSS' - 'LOLCATS'))
sum(abs('RGVBGWQ' - 'LOLCATS'))
sum(abs('POKYHND' - 'LOLCATS'))
sum(abs('YBGRFDW' - 'LOLCATS'))
sum(abs('LMBGTRD' - 'LOLCATS'))
sum(abs('KULFDEW' - 'LOLCATS'))
sum(abs('KUJQKDS' - 'LOLCATS'))
sum(abs('EJUHNSH' - 'LOLCATS'))
sum(abs('UHYHFWG' - 'LOLCATS'))

]

total = sum( a)

fitness = 1 ./ ( 1 .+ a)

total_fitness = sum( fitness)

prop_fitness = fitness ./ total_fitness

sum(prop_fitness)

cumsum(prop_fitness)

cross = [0.381 0.153 0.904 0.773 0.103]

l = 1
u = 7

l .+ (u - l) .* cross

mut_loc = [0.434 0.881 0.633 0.257 0.868 0.534 0.594 0.168 0.142 0.498]

l .+ (u - l) .* mut_loc

new_sym = [0.215 0.467 0.631 0.770 0.430 0.891 0.713 0.555 0.499 0.844]

l = 1
u = 27

l .+ (u - l) .* new_sym

%	1	A
%	2	B
%	3	C
%	4	D
%	5	E
%	6	F
%	7	G
%	8	H
%	9	I
%	10	J
%	11	K
%	12	L
%	13	M
%	14	N
%	15	O
%	16	P
%	17	Q
%	18	R
%	19	S
%	20	T
%	21	U
%	22	V
%	23	W
%	24	X
%	25	Y
%	26	Z


b = [
sum(abs('EJUFDEW' - 'LOLCATS'))
sum(abs('KULHNSH' - 'LOLCATS'))
sum(abs('UULQDEW' - 'LOLCATS'))
sum(abs('KHYHFWG' - 'LOLCATS'))
sum(abs('LMBGTRW' - 'LOLCATS'))
sum(abs('KULFDED' - 'LOLCATS'))
sum(abs('LMBGTRD' - 'LOLCATS'))
sum(abs('KOLFDEW' - 'LOLCATS'))
sum(abs('MOKYHND' - 'LOLCATS'))
sum(abs('PMBGTRD' - 'LOLCATS'))

]

total = sum( b)


fitness = 1 ./ ( 1 .+ b)

total_fitness = sum( fitness)

prop_fitness = fitness ./ total_fitness

sum(prop_fitness)
