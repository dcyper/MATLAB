xk = input("Podaj współrzędną x drugiego punktu (końcowego): ");
yk = input("Podaj współrzędną y drugiego punktu (końcowego): ");
xp = input("Podaj współrzędną x pierwszego punktu (początkowego): ");
yp = input("Podaj współrzędną y pierwszego punktu (początkowego): ");


delta_x = xk - xp ;
delta_y = yk - yp;
czwartak = (atan(abs(delta_y/delta_x)))*200/pi;

if (delta_x > 0 ) && (delta_y>0)
   azymut = czwartak;
elseif (delta_x >0 ) && (delta_y < 0)
    azymut = 200 - czwartak;
elseif (delta_x < 0) && (delta_y > 0)
    azymut = 400 - czwartak;
else
    azymut = 200 + czwartak;
end

wynik = ['Azymut kierunku zadanego przez podane punkty wynosi: ', num2str(azymut)];
disp(wynik);