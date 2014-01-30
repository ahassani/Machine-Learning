clear ; close all; clc

load ('ex7faces.mat')
%X = rand(1024);

%5000 x 1024
[m n] = size(X);


mu = mean(X);
X = bsxfun(@minus, X, mu);

sigma = std(X);
X = bsxfun(@rdivide, X, sigma);


[s v d] = svd(X'* X * 1/m);



%project
	%reduce each column width to 30
	% s = 1024 x 1024
	K = 30;

	%   5000 x 1024    *     1024 x 30    = 5000 x 30 = 150,000
	X = X              *     s(:,1:K); 

%recover
	%   5000 x 30     *     30 * 1024     = 5000 * 1024 = 5,120,000
	X = X             *     s(:,1:K)';

	% 5,120,000/150,000 = 34 times 
	% 150,000/5,120,000 = 1/34 = .029 = 2%


	

%only select first 100 images
X = X(1:100,:);

% Gray Image
colormap(gray);

% Compute rows, cols
[m n] = size(X)
% 100 x 1024

example_width  = sqrt(n)           % 1024^.5 = 32
example_height = n / example_width % 1024/32 = 32


% Compute number of items to display
display_rows = sqrt(m)             % 100^.5 = 10
display_cols = m / display_rows    % 100 % 10 = 10


% Setup blank display
display_array = - ones( display_rows * example_height, ...
					    display_cols * example_width);

% Copy each example into a patch on the display array
curr_ex = 1;
for j = 1:display_rows
	for i = 1:display_cols
		if curr_ex > m, 
			break; 
		end
		
		% Get the max value of the patch
		max_val = max(abs(X(curr_ex, :)));
		display_array( (j - 1) * example_height + (1:example_height), ...
		               (i - 1) * example_width  + (1:example_width)) = ...
						reshape(X(curr_ex, :), example_height, example_width) / max_val;
		curr_ex = curr_ex + 1;
	end
	if curr_ex > m, 
		break; 
	end
end

% Display Image
h = imagesc(display_array, [-1 1]);