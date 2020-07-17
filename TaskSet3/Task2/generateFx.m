function pol = generateFx(name,surname)
% Use this function to generate a unique polynomial for yourself. Note that
% there is a more efficient way to generate polynomials, but this would
% rely on toolbox, which you might not have installed, so I use this, more
% general, method instead.
%
% Input:
% * name - your name (use only latin letters, convert non-latin letters
% into their equivalents)
% * surname - your surname (once again convert non-latin letters to their
% equivalents)
%
% Output:
% * coefs - coefficients for your polynomial. Vector in the same format as
% expected by polyval and similar functions.
%
    prodName = sqrt(prod(double(name(1:min(4,end)))));
    prodSName = sqrt(prod(double(surname(1:min(4,end)))));
    % lets set seed based on your name and surname
    seed = prodName * prodSName;
    rng(int32(seed));
    % lets pick a random polynomial order
    order = randi([4,10]);
    % while we haven't generate a proper polynomial, generate new one
    flag = false;
    while ~flag
        pol = randsample([-9:9 zeros(1,8)],order,true);
        flag = checkPoly(pol);
    end
end

function flag = checkPoly(pol)
% this function checks if polynomial has at least two real roots
    flag = (sum(abs(imag(unique(roots(pol)))) < 1e-13) >=3);
end
