function image=quantize(k,n)
k=uint8(k);
n=256/n;
disp(n);
image=idivide(k,n);
image=image*n;
end