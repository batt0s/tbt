clc;
clear;
A = randi([1,5000],1,100000);
 
 tic
 secmeli_siralama(A);
 toc
 
 tic
 kabarcik_siralama(A);
 toc
 
 tic
 sort(A);
 toc