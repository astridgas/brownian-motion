exec("simulation_b.sci", 0);
for i=1:n      
      y(i) = stdev(vectorx(:,i)).^2 + stdev(vectory(:,i).^2).^(1/2);
      x(i) = i;
end
plot2d(x, y)
xgrid(16)
xtitle('Aleksander Skup, N = 1000','i-ty krok', 'σr położenia cząstek');
