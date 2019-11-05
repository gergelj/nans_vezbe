% Data je funkcija f(x) = sin 2x − x
f = @(x) sin(2*x)-x;

% a) Nacrtati grafik funkcije na intervalu [0,2π].
a = 0;
b = 2*pi;

x = linspace(a, b, 100);
plot(x, f(x)); hold on

% b) Proizvoljnom metodom naći i nacrtati min. i max. funkcije u istom intervalu.

% Min i Max su tacke gde je prvi izvod funkcije = 0.
% prvi izvod:
df = @(x) 2*cos(2*x)-1;

x_max = zeroBisection(df, 0, 1.5, 0.00001); 
x_min = zeroBisection(df, 4, 6, 0.00001); 

plot(x_max, f(x_max), 'o');
plot(x_min, f(x_min), 'o');

disp('Resenje: ');
disp(['x min = ', num2str(x_min)]);
disp(['x max = ', num2str(x_max)]);