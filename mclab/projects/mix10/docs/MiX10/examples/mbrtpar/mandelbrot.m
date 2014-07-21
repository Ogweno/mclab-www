function set=mandelbrot(N, Nmax)
%n=integer?
%nmax=parameter
%x,c are complex
%ya,yb,xa,xb,dx,dy
% computes mandelbrot set with N elements and Nmax iterations

  side=round(sqrt(N));
  ya=-1;
  yb=1;
  xa=-1.5;
  xb=.5;
  dx=(xb-xa)/(side-1);
  dy=(yb-ya)/(side-1);
  set=zeros(side,side);
  
  for x=0:side-1
     set = inloop(x+1,set,side,xa,dx,ya,dy,Nmax);
  end
  set;
end


function set = inloop(x,set,side,xa,dx,ya,dy,Nmax)
%!parfor
    for y=0:side-1
        
        set(y+1,x)=iterations(xa+x*dx+i*(ya+y*dy),Nmax);
    end
     

end