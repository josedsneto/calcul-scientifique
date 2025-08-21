N = 20;
a = 10;

I = zeros(N,1);
I(1) = log((1+a)/a);

for i = 1:N
  I(i+1) = 1/i -a*I(i);
end

h2 = figure();
plot(I, "-sg");
grid();
%title('Value of I_n through forward method');
ylim([0 0.1])
xlabel("Number of iterations");
legend('I_n');
%tight();

set(h2,'PaperSize',[5 5]);
print(h2,'forward_plot', '-dpdf', '-r300', '-bestfit');
%print(h2,'forward_plot', '-dpng', '-r300');


