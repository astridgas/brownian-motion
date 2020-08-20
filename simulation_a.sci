exec("my_segs.sci", 0);
exec("coordinates.sci", 0);
clf;
plot2d([-10,10],[-10,10],[-1,-1]);
xgrid(16);
xtitle('Aleksander Skup, N = 1')
rand('uniform'); // deklaracja rozkladu dla jakiego beda losowane liczby

vectorx = []; // deklaracja macierzy wspolrzednych
vectory = [];
for j = 1:1 // dla ilu czastek bedzie wykonana symulacja
    x0 = 0; // wsp. x punktu startowego
    y0 = 0; // wsp. y punktu startowego        
    
    n = 3000; // ilosc krokow, ktore wykonuje czastka
    for i = 1:n
        angle = 360 * rand(); // liczba z przedzialu (0, 1) * 360
        [x1, y1] = coordinates(1, angle, x0, y0); // nowe wsp. [x, y]    
        my_segs(x0, y0, x1, y1); // funkcja rysujaca      
        x0 = x1; //aktualizacja wspolrzednych czastki
        y0 = y1; //aktualizacja wspolrzednych czastki
        vectorx(j, i) = x1; // tworzenie macierzy wspolrzednych x
        vectory(j, i) = y1; // tworzenie macierzy wspolrzednych y       
    end      
end


