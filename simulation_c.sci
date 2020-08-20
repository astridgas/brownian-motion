exec("my_segs.sci", 0);
exec("B09_cauchy.sci", 0);
clf;
plot2d([-10,10],[-10,10],[-1,-1]);
xgrid(16);
xtitle('Aleksander Skup, N = 1')

vectorx = []; // deklaracja macierzy wspolrzednych
vectory = [];
for j = 1:1 // dla ilu czastek bedzie wykonana symulacja
    x0 = 0; // wsp. x punktu startowego
    y0 = 0; // wsp. y punktu startowego   
    
    n = 5000; // ilosc krokow, ktore wykonuje czastka       
    for i = 1:n
        dx = randCauchy(1, 1); // przyrost dx z rozkladu Cauchy'ego
        dy = randCauchy(1, 1); // przyrost dy z rozkladu Cauchy'ego
        x1 = x0 + dx; // generowanie nowej wspolrzednej x
        y1 = y0 + dy; // generowanie nowej wspolrzednej y    
        my_segs(x0, y0, x1, y1); // funkcja rysujaca              
        x0 = x1; //aktualizacja wspolrzednych czastki
        y0 = y1; //aktualizacja wspolrzednych czastki
        vectorx(j, i) = x1; // tworzenie macierzy wspolrzednych x
        vectory(j, i) = y1; // tworzenie macierzy wspolrzednych y   
    end       
end

