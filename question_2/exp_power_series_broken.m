
x = -20;

N = ceil(2*abs(x));

Y = zeros(N,1);
Y(1) = 1;
E = zeros(N,1);

for i = 1:N
  Y(i + 1) = Y(i) + x^i/factorial(i);
  E(i + 1) = abs(Y(i + 1) - exp(x))
end

% Calculate theoretical bounding error
be = abs(x)^N / factorial(N);

h = figure();
semilogy(1:N + 1, E, "-sr"); hold on
semilogy(1:N + 1, ones(N+ 1)*be, "--k");
grid();
%title('Error of exp(10) through power series');
%ylabel('|exp(10) - exp(10)_{power series}|');
xlabel("Number of Iterations");
legend('|exp(20) - exp(20)_{power series}|', 'Bounding Error |x|^n/n!');

set(h,'PaperSize',[5 5]);
print(h,'exp_err_plot_moins_20', '-dpdf', '-r300', '-bestfit');

h2 = figure();
plot(1:N + 1, Y, "-sg"); hold on
plot(1:N + 1, ones(N+1)*exp(x), "--b");
grid();
title('Value of exp(10) through power series');
xlabel("Number of Iterations");
legend('exp(20)_{power series}', 'exp(20)');
%tight();

set(h2,'PaperSize',[5 5]);
print(h2,'exp_plot_moins20', '-dpdf', '-r300', '-bestfit');


