function HogVec = HOG(im)


     if size(im,3) == 3
      	    im = rgb2gray(im);            
     end

     HogVec = [];
     
     for x = 1 : floor(size(im,1)/8)
         
         for y = 1 : floor(size(im,2)/8)
            
             
             D = im(x:x+7, y:y+7);
             
             vb = GiveBin(D);
                                
             HogVec = [HogVec;vb];
             
             
         end         
     end
     
end


function BinVec = GiveBin(D)


        Dy = [-1 0 1];
        Dx = Dy';
        
        
        Ix = conv2(double(D),double(Dx),'same');
        Iy = conv2(double(D),double(Dy),'same');
        
        
        Gm = ((Ix.^2) + (Iy.^2)).^0.5;     
        
        Gd = rad2deg(atan2(Iy,Ix));
         
        BinVec = zeros(9,1);
        
        for x = 1:8
            for y = 1:8
                
              if(Gd(x,y)<0)
                  Gd(x,y) = -1*Gd(x,y);
              end
             
                if Gd(x,y)<=20 && Gd(x,y)>0
                    BinVec(1) = BinVec(1) + Gm(x,y);
                 
                elseif(Gd(x,y)<=40 && Gd(x,y)>20)
                    BinVec(2) = BinVec(2) + Gm(x,y);
              
                elseif(Gd(x,y)<=60 && Gd(x,y)>40)
                    BinVec(3) = BinVec(3) + Gm(x,y);
                                      
                elseif(Gd(x,y)<=80 && Gd(x,y)>60)
                    BinVec(4) = BinVec(4) + Gm(x,y);
              
                elseif(Gd(x,y)<=100 && Gd(x,y)>80)
                    BinVec(5) = BinVec(5) + Gm(x,y);
                    
                elseif(Gd(x,y)<=120 && Gd(x,y)>100)
                    BinVec(6) = BinVec(6) + Gm(x,y);
                        
                elseif(Gd(x,y)<=140 && Gd(x,y)>120)
                    BinVec(7) = BinVec(7) + Gm(x,y);
                    
                elseif(Gd(x,y)<=160 && Gd(x,y)>140)
                    BinVec(8) = BinVec(8) + Gm(x,y);
                   
                elseif(Gd(x,y)<=180 && Gd(x,y)>160)
                    BinVec(9) = BinVec(9) + Gm(x,y);
                    
                else
                    %disp(Gd(x,y));
            end
               
                        
            end
            
        end
        
        
end










