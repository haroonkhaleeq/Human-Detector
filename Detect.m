function val = Detect(im)

for i = 1:20:size(im,1)
   for j = 1:20:size(im,2)
      
       D = im(i:i+159,j:j+95);
       v = Match(D);
       
       if(v == 1)
           return v;
       end
       
   end    
end


im2 = imresize(im,0.5);
b = check(im2);

if(b==1)
    return b;
end

im2 = imresize(im,0.25);
b = check(im2);

if(b==1)
    return b;
end

im2 = imresize(im,-0.5);
b = check(im2);

if(b==1)
    return b;
end

im2 = imresize(im,2);
b = check(im2);

if(b==1)
    return b;
end

im2 = imresize(im,2.5);
b = check(im2);

if(b==1)
    return b;
end

t = 0;
return t;

end

function b = check(im)

for i = 1:20:size(im,1)
   for j = 1:20:size(im,2)
      
       D = im(i:i+159,j:j+95);
       v = Match(D);
       
       if(v == 1)
           val = v;
           return val;
       end
       
   end    
end


end


function v = Match(im)

load Pos;
load Neg;

hog = HOG(im);

B = double(hog) - im;
[U,S,V] = svd(B');  %% you can find out eigenVectors of B*B' by using SVD Also...
D = S.*S;           %% Eigen Values of B*B'...  
eVals = diag(D);

%%%%%%%%%%%%%%%%%%%%%%%%%%



end