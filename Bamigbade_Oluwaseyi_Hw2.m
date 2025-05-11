% Octave script for computing π using an iterative algorithm
% Save this file as "Bamigbade_Oluwaseyi_Hw2.m"

% Define the full path for the output file
outputFilePath = 'C:\Users\johnb\OneDrive\Desktop\Coding - 2024\Coding---2024\Numerical Analysis\Homework 2\output.txt';

% Attempt to open the file for writing
fileID = fopen(outputFilePath, 'w');
if fileID == -1
    error('Error: Unable to open or create "output.txt". Check folder permissions.');
end

% Header for the output table
fprintf(fileID, " k        f             |f - pi|        g             |g - pi|\n");
fprintf(fileID, "---------------------------------------------------------------\n");
disp(" k        f             |f - pi|        g             |g - pi|");
disp("---------------------------------------------------------------");

% Initialize variables
a = 0;                     % Initial value for a
b = 1;                     % Initial value for b
c = 1 / sqrt(2);           % Initial value for c
d = 0.25;                  % Initial value for d
e = 1;                     % Initial value for e

% Iteration loop for k = 1 to 5
for k = 1:5
    % Update variables based on the algorithm
    a = b;
    b = (b + c) / 2;
    c = sqrt(c * a);
    d = d - e * (b - a)^2;
    e = 2 * e;
    
    % Compute f and g as approximations of π
    f = b^2 / d;
    g = (b + c)^2 / (4 * d);
    
    % Display the current iteration results
    printf("%d   %.10f   %.10f   %.10f   %.10f\n", k, f, abs(f - pi), g, abs(g - pi));
    
    % Write results to file
    fprintf(fileID, "%d   %.10f   %.10f   %.10f   %.10f\n", k, f, abs(f - pi), g, abs(g - pi));
end

% Close the file
fclose(fileID);

% Confirm script completion
disp("Script executed successfully.");
disp(['Output saved to: ', outputFilePath]);
