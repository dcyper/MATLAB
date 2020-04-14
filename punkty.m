min_x = 500; 
max_x = 1000;
min_y = 250; 
max_y = 500;
N = 50; % liczba punktów
x = min_x + (max_x-min_x)*rand(N,1);
y = min_y + (max_y-min_y)*rand(N,1);
subplot(1,2,1), 
plot(x,y,'bo','MarkerFaceColor','r'); hold on;
d = zeros(N*(N-1)/2,1);
k = 0;
for i=1:N-1
    for j=i+1:N     
        k = k + 1;      
        d(k,1) = sqrt((x(i) - x(j))^2 + (y(i) - y(j))^2);  
    end
end
x0 = mean(x); 
y0 = mean(y);
r = mean(d);
phi = 0:pi/50:2*pi;
xc = r * cos(phi) + x0;
yc = r * sin(phi) + y0;
subplot(1,2,2)
plot(xc, yc, '-'); hold on; % rysowanie okręgu
i=1;

while(i<length(x))
        if (abs(x(i)-x0)< r && abs(y(i)-y0)< r)
            plot(x(i),y(i),'r+'); hold on; % rysowanie punktów wewnątrz okręgu
        else 
            plot(x(i),y(i),'bo'); % rysowanie punktów na zewnątrz okręgu
        end
    i=i+1;
end