x = input("Ile równań zamierzasz podać?: ");
n = input("Podaj ilość niewiadomych: ");

if (x ~=n)
    disp('Błąd. Liczba równań musi być równa liczbie niewiadomych ');
end

A=zeros(n,n);
B=ones(n,1);
%disp(A);
%disp(B);
i=1;
while (i<=x)
    j=1;
    while (j<=x)
        str=['Podaj współczynnik przy niewiadomej ', num2str(j) ,' równania ', num2str(i)];
        A(i,j)=input(str);
        j=j+1;
    end
    str2=['Podaj wyraz wolny równania ', num2str(i)];
    B(i,1)=input(str2);
    i=i+1;
end
%disp(A);
%disp(B);
i=1;
W=det(A);
%disp(W);
while(i<=x)
    C=A;
    %disp(C);
    if(W==0)
        disp("Układ równań sprzeczny!");
    else
        j=1;
        while(j<=x)
            C(j,i)=B(j,1);
            j=j+1;
        end
    end
    Wi=det(C);
    %disp(Wi);
    wynik=['Niewiadoma ',num2str(i),' wynosi ',num2str(Wi/W)];
    %disp(wynik);
    i=i+1;
end
