
%% Loading data for the single parameter hypothesis h(x)=y
data = load('ex1data1.txt');

% The first column of data is the input and the second the output.
% Load them into variable X and y.
X = data(:,1);
y = data(:,2);

fprintf('Plotting Data ...\n')
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
%pause;

fprintf('Calculating the weighs analytically for the single paramter function.\n');

% Calculate the weights analytically (do not forget to modify X as in Lecture 15 slide 8...).
X = [ones(size(X)), X];
w = pinv(X'*X)*X'*y;


fprintf('Plotting the linear fit.\n');
% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*w, '-')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Part 2 (very similar to part one, but with two variable hypothesis h(x1, x2)= y )

data = load('ex1data2.txt');

X = data(:,(1:2));
y = data(:,3);
m = size(X);
if m(2)+1<=m(1)
    fprintf('Calculating the weighs analytically for the two parameter function.\n');
    X = [ones(m(1),1), X];
    w = pinv(X'*X)*X'*y;
else 
    fprintf('Attributes/features larger than the TS \n');
end
    
