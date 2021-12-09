function visited=BFS(image,l,r)
    [x1 y1]=size(image);
    visited=zeros(x1,y1);
arr(1)=l;
arr(2)=r;
need=2;
counter=0;
  while counter<need
    x=arr(counter+1);
    y=arr(counter+2);
    visited(x,y)=1;
    counter=counter+2;
        if(x~=1)
            if(image(x,y)==image(x-1,y) && visited(x-1,y)==0)
            visited(x-1,y)=1;
            arr(end+1)=x-1;
            arr(end+1)=y;
            need=need+2;
        end
        end
        if(x~=x1)
        if(image(x,y)==image(x+1,y) && visited(x+1,y)==0)
            visited(x+1,y)=1;
            arr(end+1)=x+1;
            arr(end+1)=y;
            need=need+2;
        end
        end
     if(y~=1)
         if(image(x,y)==image(x,y-1) && visited(x,y-1)==0)
            visited(x,y-1)=1;
            arr(end+1)=x;
            arr(end+1)=y-1;
            need=need+2;
        end
     end
    if(y~=y1)
        if(image(x,y)==image(x,y+1) && visited(x,y+1)==0)
            visited(x,y+1)=1;
            arr(end+1)=x;
            arr(end+1)=y+1;
            need=need+2;
        end
    end
    
  end
end