m = 20;
a = 10;

I = zeros(m,1);
I(m) = 0;

for i = m:-1:2
  I(i-1) = (1/a)*(1/(i-1) - I(i));
end
I;

h2 = figure();
plot(I, "-sg"); hold on
grid();
ylim([0 0.1])
%title('Value of I^{(20)}_n through backward method');
xlabel("Number of iterations");
legend('I^{(m)}_n');

set(h2,'PaperSize',[5 5]);
print(h2,'backward_plot', '-dpdf', '-r300', '-bestfit');
%print(h2,'backward_plot', '-dpng', '-r300');
