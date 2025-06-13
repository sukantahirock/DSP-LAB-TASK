% Define two matrices A and B 
A = [1, 2, 3; 4, 5, 6; 7, 8, 9]; 
B = [9, 8, 7; 6, 5, 4; 3, 2, 1]; 
 
% Display matrices A and B 
disp('Matrix A:'); 
disp(A); 
 
disp('Matrix B:'); 
disp(B); 
 
% Matrix Addition (A + B) 
additionResult = A + B; 
disp('Matrix Addition (A + B):'); 
disp(additionResult); 
 
% Matrix Subtraction (A - B) 
subtractionResult = A - B; 
disp('Matrix Subtraction (A - B):'); 
disp(subtractionResult); 
 
% Matrix Multiplication (A * B) 
multiplicationResult = A * B; 
disp('Matrix Multiplication (A * B):'); 
disp(multiplicationResult); 
 
% Matrix Division (A ./ B) - Note: This is element-wise division 
divisionResult = A ./ B; 
disp('Matrix Element-wise Division (A ./ B):'); 
disp(divisionResult);