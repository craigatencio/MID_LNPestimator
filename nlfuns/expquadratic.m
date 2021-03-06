function f = expquadratic(x,fprs)
% f = expquadratic(x,fprs)
% 
% Evaluate nonlinearity given by an exponentiated quadratic
%   f = exp( x'*M*x + b'*x + const)
% for each row of x
%
% INPUT:
%      x [N x M]  - each column represents a stimulus filter output
%   fprs [struct] - structure with fields 'M', 'b', 'const'
%
% OUTPUTS:
%      f [N x 1] - net output of nonparametric nonlinearity 
%
% Updated: 22 Jan 2014 (JW Pillow)


M = fprs.M;
b = fprs.b;
const = fprs.const;

f = exp(sum((x*M).*x,2) + x*b + const);
