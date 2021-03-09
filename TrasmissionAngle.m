function [Mu] = TrasmissionAngle(a, b, c, d, phi)
%Calculating the trasmission angles
%a=crank
%b=coupler
%c=follower
%d=fixed

Mu = acosd(((b^2+c^2)-(a^2+d^2)+2*a*d*cosd(phi))/(2*b*c));

end

