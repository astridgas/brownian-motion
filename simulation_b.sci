exec("my_segs.sci", 0);
clf;
plot2d([-10,10],[-10,10],[-1,-1]);
xgrid(16);
xtitle('Aleksander Skup, N = 1')
rand('normal'); // deklaracja rozkladu Gaussa

vectorx = []; // deklaracja macierzy wspolrzednych
vectory = [];
for j = 1:1 // dla ilu czastek bedzie wykonana symulacja
    x0 = 0; // wsp. x punktu startowego
    y0 = 0; // wsp. y punktu startowego   
    
    n = 3000; // ilosc krokow, ktore wykonuje czastka    
    for i = 1:n
        dx = rand(); // przyrost dx pochodzacy z rozkladu Gaussa
        dy = rand(); // przyrost dy pochodzacy z rozkladu Gaussa       
        x1 = x0 + dx; // generowanie nowej wspolrzednej x
        y1 = y0 + dy; // generowanie nowej wspolrzednej y   
        my_segs(x0, y0, x1, y1); // funkcja rysujaca       
        x0 = x1; //aktualizacja wspolrzednych czastki
        y0 = y1; //aktualizacja wspolrzednych czastki
        vectorx(j, i) = x1; // tworzenie macierzy wspolrzednych x
        vectory(j, i) = y1;  
    end         
end



