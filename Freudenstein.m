function [k] = Freudenstein(inAngl,outAngl)
%Freudenstein's equation and solution function

eqtn(:,:) = [cosd(outAngl), -cosd(inAngl), [1;1;1]];
answ = cosd(inAngl-outAngl);
k = linsolve(eqtn,answ);

end
