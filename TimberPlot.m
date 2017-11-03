function []=TimberPlot(start,coords,horizon,t)
% start is the matrix of initial volumes in each plot
% coords is the array of coordinates that define each plot. 
% Syntax is [Name (x1,y1) (x2,y2) (x3,y3) (x4,y4)]
% horizon is the total time period to be analyzed
% t number of cuts made during the horizon

coords={1 '(0,0)' '(0,1)' '(1,0)' '(1,1)';
        2 '(1,0)' '(2,0)' '(1,1)' '(2,1)';
        3 '(0,1)' '(1,1)' '(0,2)' '(1,2)';
        4 '(1,1)' '(2,1)' '(1,2)' '(2,2)'};

% 10 cuts over 10 yrs
horizon=10;
t=10;
for i=1:N
    for j=1:N
        start(i,j)=abs(random('normal',0,1))*1000;
    end
end
  
% Assuming avg tree is Douglas Fir is DBH 36 in and height 100 ft, Tarif #
% is 27


N=size(coords,1);
connections=zeros(N);
for i=1:N
    for j=1:N
        if i~=j
            count=0;
            for k=2:5
                for l=2:5
                    if isequal(coords(i,k),coords(j,l))
                        count=count+1;
                        if count>=2
                            connections(i,j)=1;
                            continue
                        end
                    end
                end
            end
        end
    end
end %connections matrix generation


% x(t,j) is a binary of if plot j is cut at time t


% growth rate


end % TimberPlot