% file fahr_to_celsius.m

function ctemp = fahr_to_celsius(ftemp) %input Fahrenheit, output Celcius
    ktemp = fahr_to_kelvin(ftemp); %konversi Fahrenheit ke Kelvin
    ctemp = kelvin_to_celsius(ktemp); %konversi Kelvin ke Celcius
end