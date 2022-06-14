%f(x) = 4x1 – 3x2 – 2x3 – x4.
C = [4;-3;-2;-1]; % Objective Function
A = [1,1,1,1;0,2,-2,-1]; % Constraints
b = [20;-10];
lb = [0;0;0;0]; %lower bound
ub = [];  %lower bound
cType = "UL"; 
varType = "CCCC"; % Continuous 
sense = -1; % Maximum falue
[xmax,fmax,status,extra] = glpk (C,A,b,lb,ub,cType,varType,sense)


%f(x) = 2x1 + 6x2 + 10x3.
%min f(x) = 2x1 + 6x2 + 10x3

C = [2;6;10]; % Objective Function
A = [1,1,-4;4,-3,2;3,-1,6]; % Constraints
b = [4;-1;8];
lb = [0;0;0]; %lower bound
ub = [];  %lower bound
cType = "SLU";
varType = "CCC";
sense = 1;
[xmin,fmin,status,extra] = glpk (C,A,b,lb,ub,cType,varType,sense)

%f(x) = 4x1 – 6x2 – 5x3 + 3x4

%min f(x) = 4x1 – 6x2 – 5x3 + 3x4

C = [4;-6;-5;3]; % Objective Function
A = [-2,5,-3,1;5,0,2,3]; % Constraints
b = [20;10];
lb = [0;0;0;0]; %lower bound
ub = [];  %lower bound
cType = "US";
varType = "CCCC";
sense = 1;
[xmin,fmin,status,extra] = glpk (C,A,b,lb,ub,cType,varType,sense)