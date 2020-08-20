function [x, y] = coordinates(r, fi, x, y)
    x = x + r * cosd(fi);
    y = y + r * sind(fi);
endfunction

// Funkcja za argumenty przyjmuje współrzędne biegunowe r oraz fi, odpowiednio
// promień wodzący i amplituda punktu a także wspólrzędne bieguna x oraz y.

// Domyślnie przyjmowany jest początek układu współrzędnych (0, 0) co nie pozwalalo
// na poprawne przeprowadzenie symulacji, ponieważ po każdym skoku
// współrzedne bieguna muszą być aktualizowane.
