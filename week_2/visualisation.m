t = [0:0.01:0.98]
y1 = sin(2*pi*4*t)
plot(t,y1)
y2 = cos(2*pi*4*t)
plot(t,y2)
hold on;
plot(t,y1)
xlabel('time')
ylabel('var')

legend('sin','cos')
title('my plot')
print -dpng 'myPlot.png'
close
figure(1); plot(t,y1);
figure(2); plot(t,y2);
subplot(1,2,1);
plot(t,y1)
subplot(1,2,2);
plot(t,y2)
axis([0.5 1 -1 1])

close

A = magic(5)
imagesc(A)
title('magicPlot')

cd './week_2'
imagesc(magic(15)),colorbar,colormap gray;
print -dpng 'magic15.png'