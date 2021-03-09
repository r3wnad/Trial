function [theta4] = Relationship(theta2,Kmatrix)

A= sind(theta2)
B= cosd(theta2)- Kmatrix(1,1)
C= Kmatrix(3,1)- Kmatrix(2,1)*cosd(theta2)
theta4(:,:) = 2*atand((A+sqrt(A.^2+B.^2-C.^2))./(B+C))
theta4(:,2) = 2*atand((A-sqrt(A.^2+B.^2-C.^2))./(B+C))

end

