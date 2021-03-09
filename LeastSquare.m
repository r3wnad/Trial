function [kMatrix] = LeastSquare2(theta2, theta4, points)
matrix1 = ones(points,1)
S (:,:) = [cosd(theta4), - cosd(theta2), matrix1, -cosd(theta2- theta4)];

syms x y z
%The matrix is initialised as f as below
f = S*[x;y;z;1]
gx = 0
gy = 0
gz = 0

%Sum of squares
for line = 1:points
    gx = (f(line,:))^2 + gx;
    gy = (f(line,:))^2 + gy;
    gz = (f(line,:))^2 + gz;
end

%Partail differential of the sums
eq1 = diff(gx,x)
eq2 = diff(gy,y)
eq3 = diff(gz,z)

%eqs= [eq1,eq2,eq3]
sol = solve([eq1,eq2,eq3])
kMatrix = double([sol.x; sol.y; sol.z])

end

