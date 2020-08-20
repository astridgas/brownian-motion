exec("simulation_c.sci", 0);
for i=1:n
      y(i) = mean(vectory(:,i));
      x(i) = i;
end
plot2d(x, y)
xgrid(16)
xtitle('Aleksander Skup, N = 1000','i-ty krok', 'średnie y-owe położenie cząstek');
