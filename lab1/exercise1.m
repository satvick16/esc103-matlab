x = 0:19;
y = zeros(20);
y(1) = 1;

for i = 2:20
    y(i) = y(i-1) + (2^(i-1)) * (1/8)^(i-1);
end

plot(x, y);
hold on;
plot(x,ones(20) .* 4/3, "r-");
legend("series data", "exact value")
xlabel("x")
ylabel("area")
hold off;