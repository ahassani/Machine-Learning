clear ; close all; clc

sz = 3;
a = rand(sz)(:,1:2);
%a=featureNormalize(a)
%a = a'*a;
load ('ex7data1.mat');
%a = X;

sz = size(a)(1);

b = [ones(sz,1)  a(:,1)];
btb = b'*b;
c = btb ^ -1 * b' * a(:,2);


p = [ones(sz,1)  a(:,2)];
ptp = p'*p;
q = ptp ^ -1 * p' * a(:,1);


ata = (    featureNormalize(a)        )'*(             featureNormalize(a)           );

[ivec ival l] = svd(ata);

 
hold on;


plot ( [q(1,1) q(1,1) + q(2,1)*8 ], [0  8], 'g');
plot ( [0  8], [c(1,1) c(1,1) + c(2,1)*8 ]);

plot ( [mean(a(:,1))  mean(a(:,1)) + (ivec(1,1)*8)] ,  [mean(a(:,2))   mean(a(:,2)) + (ivec(2,1)*8)], 'r');
plot ( [mean(a(:,1))  mean(a(:,1)) + (ivec(1,2)*8)] ,  [mean(a(:,2))   mean(a(:,2)) + (ivec(2,2)*8)], 'r');

plot ( a(:,1), a(:,2), 'o' );



axis ([-2, 2, -2, 2], "square");

hold off;

