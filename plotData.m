function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

 plot(x, y, 'rx', 'MarkerSize', 10); % Plot the data
 ylabel('y'); % Set the y−axis label 
 xlabel('x'); % Set the x−axis label

end
