for i = 1 : 4
    hn(i)
end
function an = hn(n)
xn = [1 -1 2 4];
yn = [2 6 4 0 8 5 12];
    if n == 1
        an = yn(1)/xn(1);
        return;
    end
    b = 0;
    for k = 1:n - 1 
        b = b+hn(k)*xn(n-k+1);
    end
    an  = (yn(n)-b)/xn(1);
end