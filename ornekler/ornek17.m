clc
clear

para = 10;
yil = 0;

while ( para < 50 )
    para = para + para*0.3;
    yil = yil + 1;
    fprintf('10 TL %d yýl sonra %g TL olur \n',yil,round(para,2));
end
