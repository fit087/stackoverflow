N = 1000
temp = 0;
v(1)=rand()*1000;
v(2) = rand()*1000;
media_parcial = (v(2)+v(2-1))/2
var = (v(2)^2+v(2-1)^2)/2 - media_parcial^2
for i= 3:1:N
    v(i) = rand()*1000;
%     media_parcial = (v(i)+v(i-1))/i
    var = var + media_parcial^2;
    media_parcial = (media_parcial*(i-1)+v(i))/i
%     var = (v(i)^2+v(i-1)^2)/i
    var = (var*(i-1)+v(i)^2)/i - media_parcial^2
end
media_parcial
var
media = mean(v)
desvio = std(v)^2

varianza = 0;
for i = 1:N
    varianza = varianza + (v(i)-media)^2;
end
i
varianza_n_1 = varianza/(i-1)
varianza_n = varianza/i
