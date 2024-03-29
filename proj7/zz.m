clear ; close all; clc

% a = [-107.02835035260560, 259.52949766243478, 53.797767189524421; ...
	 % 337.24438532608735, -73.501580275151539, 60.207103252698602; ...
	 % -72.022850699710546, -72.094566859207305, -140.99825953535714];

% a = a';

a = rand(2);

%a = [.2; 3 ] * [1, 3];

ata = a'*a;

[ivec, ival] = eig(ata);

ival = ival^(-1/2)

r = a * ivec' * ival * ivec

%r = ivec;

hold on;
plot ( [0 a(1,1)], [0, a(1,2)] );
plot ( [0 a(2,1)], [0, a(2,2)] );

plot ( [0 r(1,1)], [0, r(1,2)] ,'r');
plot ( [0 r(2,1)], [0, r(2,2)] ,'r');


%plot ( [0 ivec(1,1)], [0, ivec(1,2)] ,'g');
%plot ( [0 ivec(2,1)], [0, ivec(2,2)] ,'g');

% plot ( [0 ee(1,1)], [0 ee(1,2)] );
% plot ( [0 ee(2,1)], [0 ee(2,2)] );
 axis ([-2, 2, -2, 2], "square");
  
hold off;