function output_C = region_contrast(A,w_xmin,w_xmax,w_ymin,w_ymax)
    %local contrast at pixel(x,y)
    %c(x,y) = 4*A(x,y)-(A(x-1,y)+A(x,y-1)+A(x+1,y)+A(x,y+1));
    
    n = (w_xmax-w_xmin)*(w_ymax-w_ymin)*3; %total no. of pixel in region w.
    C = 0;
    for x = w_xmin:w_xmax
        for y = w_ymin:w_ymax
            C =(C + abs(4*double(A(x,y))-(double(A(x-1,y)+A(x,y-1)+A(x+1,y)+A(x,y+1))))*log10(double(1+abs(4*double(A(x,y))-(double(A(x-1,y)+A(x,y-1)+A(x+1,y)+A(x,y+1)))))));
        end
    end
    output_C = (1/n)*C;
   
end