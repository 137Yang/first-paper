function f = Z_beta1(q,b,g)

f= log(tanh(b.*sqrt(1+g.^2-2*g.*cos(q))).^2);

end
