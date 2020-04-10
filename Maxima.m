clc
M = randi([0 100],randi(10),randi(10))
[w, k] = size(M);
i = 0;
j = 0;
while i < w
    i = i+1;
    j = 1;
    maks_w = M(i,j);
    while j < k
        j = j+1;
        if M(i, j) > maks_w
            maks_w = M(i,j);
        end
    end
    wypisz_w = ['Element max wiersza ', num2str(i), ' wynosi ', num2str(maks_w)];
    disp(wypisz_w);
end
i=0;
j=0;
while i < k
    i = i+1;
    j = 1;
    maks_k = M(j,i);
    while j < w
        j = j+1;
        if M(j,i) > maks_k
            maks_k = M(j,i);
        end
    end
    wypisz_k = ['Element max kolumny ', num2str(i), ' wynosi ', num2str(maks_k)];
    disp(wypisz_k);
end