 
%% UCK 305
 
%% DÖNEM PROJESİ
 
%% Celal AKSOY / 110200051

%% Kümelenmiş Girdaplar Teorisi Kodu ve Proje Grafikleri

%(KGT kodunu incelemek isterseniz kodu çalıştıran fonksiyon en alttadır.)

%% KGT Kodu Grafikleri

% n      = Panel sayısı
% AoA    = Hücum açısı
% cl     = Taşıma katsayısı

clc;
clear;

n=100;
AoA=(0:1:20);
cd = zeros(1,21);

cl     = zeros(1,length(AoA));
cm     = zeros(1,length(AoA));

for k =1:1:length(AoA)
    
   [cl(k),AoA(k),cm(k)] = KGT(AoA(k),n);
  
end

figure('Position', [100, 100, 800, 600]);
subplot(3,1,1);
plot(AoA,cl,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Taşıma Katsayısı');
title('KGT - İnviskoz');
grid on

subplot(3,1,2);
plot(AoA,cm,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Moment Katsayısı');
title('KGT - İnviskoz');
grid on

subplot(3,1,3);
plot(AoA,cd,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Sürükleme Katsayısı');
title('KGT - İnviskoz');
grid on

%% CFD Grafikleri

cfd_AoA = [0 5 8 10 12 14 16 18 20];
cfd_cl_in = [

-0.00016742
0.42814774
0.68037011
0.73770623
0.81580202
0.62096908
0.56703977
0.70255989
0.55374905 ];

figure('Position', [100, 100, 800, 600]);
subplot(3,2,1);
plot(cfd_AoA,cfd_cl_in,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Taşıma Katsayısı');
title('CFD - İnviskoz');
grid on

cfd_cm_in = [

-6.40E-05
0.098623984
0.15464497
0.14771947
0.15618423
0.10038125
0.079465713
0.096776767
0.069136678 ];

subplot(3,2,3);
plot(cfd_AoA,cfd_cm_in,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Moment Katsayısı');
title('CFD - İnviskoz');
grid on

cfd_cd_in = [

0.002615486
0.028135472
0.04104889
0.045255976
0.056896274
0.081160942
0.079818597
0.087748871
0.095577572 ];

subplot(3,2,5);
plot(cfd_AoA,cfd_cd_in,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Sürükleme Katsayısı');
title('CFD - İnviskoz');
grid on

cfd_cl_vis = [

-3.63E-05
0.34607965
0.55354801
0.58547465
0.64673247
0.55656751
0.65642543
0.67165371
0.70226537 ];

subplot(3,2,2);
plot(cfd_AoA,cfd_cl_vis,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Taşıma Katsayısı');
title('CFD - Viskoz');
grid on

cfd_cm_vis = [

-1.68E-05
0.07130155
0.11212135
0.10177403
0.11222601
0.12256733
0.15479281
0.13882529
0.17859887 ];

subplot(3,2,4);
plot(cfd_AoA,cfd_cm_vis,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Moment Katsayısı');
title('CFD - Viskoz');
grid on

cfd_cd_vis = [

0.023745406
0.047863371
0.060820008
0.067399206
0.081154613
0.13166126
0.14887599
0.15156518
0.19550076 ];

subplot(3,2,6);
plot(cfd_AoA,cfd_cd_vis,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Sürükleme Katsayısı');
title('CFD - Viskoz');
grid on

%% Xfoil Grafikleri

Xfoil_cl_in = [

0
0.1264
0.2528
0.3792
0.5054
0.6315
0.7573
0.883
1.0084
1.1334
1.2582
1.3825
1.5064
1.6299
1.7529
1.8753
1.9972
2.1185
2.2391
2.359
2.4783 ];

figure('Position', [100, 100, 800, 600]);
subplot(3,2,1);
plot(AoA,Xfoil_cl_in,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Taşıma Katsayısı');
title('Xfoil - İnviskoz');
grid on

Xfoil_cd_in = [

0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
 ];

subplot(3,2,5);
plot(AoA,Xfoil_cd_in,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Sürükleme Katsayısı');
title('Xfoil - İnviskoz');
grid on

Xfoil_cm_in = [

0
-0.0024
-0.0048
-0.0073
-0.0097
-0.0121
-0.0144
-0.0168
-0.0192
-0.0215
-0.0238
-0.026
-0.0283
-0.0305
-0.0326
-0.0348
-0.0368
-0.0389
-0.0409
-0.0428
-0.0447 ];

subplot(3,2,3);
plot(AoA,Xfoil_cm_in,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Moment Katsayısı');
title('Xfoil - İnviskoz');
grid on

Xfoil_cl_vis = [

0
-0.0349
-0.0572
-0.0603
-0.0478
-0.0242
0.0054
0.0381
0.0724
0.1076
0.1437
0.1806
0.2184
0.257
0.2963
0.3361
0.4221
0.4947
0.5445
0.5793
0.6333 ];

subplot(3,2,2);
plot(AoA,Xfoil_cl_vis,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Taşıma Katsayısı');
title('Xfoil - Viskoz');
grid on

Xfoil_cd_vis = [

0.06019
0.06044
0.06147
0.06374
0.06737
0.07235
0.07858
0.0859
0.09419
0.10327
0.11302
0.1233
0.13404
0.14518
0.1567
0.16856
0.19274
0.21914
0.23346
0.23952
0.26383 ];

subplot(3,2,6);
plot(AoA,Xfoil_cd_vis,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Sürükleme Katsayısı');
title('Xfoil - Viskoz');
grid on

Xfoil_cm_vis = [

0
0.0107
0.02
0.0264
0.0301
0.0314
0.0309
0.0292
0.0266
0.0232
0.0193
0.0148
0.0099
0.0045
-0.0012
-0.0073
-0.0248
-0.0373
-0.0441
-0.0485
-0.0562 ];

subplot(3,2,4);
plot(AoA,Xfoil_cm_vis,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Moment Katsayısı');
title('Xfoil - Viskoz');
grid on

%% Verilerin Karşılaştırılması

figure('Position', [100, 100, 800, 600]);
plot(AoA,cl,'LineWidth',1.5);
hold on
plot(cfd_AoA,cfd_cl_in,'LineWidth',1.5);
hold on
plot(cfd_AoA,cfd_cl_vis,'LineWidth',1.5);
hold on
plot(AoA,Xfoil_cl_in,'LineWidth',1.5);
hold on
plot(AoA,Xfoil_cl_vis,'LineWidth',1.5);
hold on
xlabel('Hücum Açısı');
ylabel('Taşıma Katsayısı');
title('Tüm Analizler(cl)');
legend('KGT','CFD-İn','CFD-Vis','Xfoil-İn','Xfoil-Vis');
grid on

figure('Position', [100, 100, 800, 600]);
plot(AoA,cm,'LineWidth',1.5);
hold on
plot(cfd_AoA,cfd_cm_in,'LineWidth',1.5);
hold on
plot(cfd_AoA,cfd_cm_vis,'LineWidth',1.5);
hold on
plot(AoA,Xfoil_cm_in,'LineWidth',1.5);
hold on
plot(AoA,Xfoil_cm_vis,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Moment Katsayısı');
title('Tüm Analizler(cm)');
legend('KGT','CFD-İn','CFD-Vis','Xfoil-İn','Xfoil-Vis');
grid on

figure('Position', [100, 100, 800, 600]);
plot(AoA,cd,'LineWidth',1.5);
hold on
plot(cfd_AoA,cfd_cd_in,'LineWidth',1.5);
hold on
plot(cfd_AoA,cfd_cd_vis,'LineWidth',1.5);
hold on
plot(AoA,Xfoil_cd_in,'LineWidth',1.5);
hold on
plot(AoA,Xfoil_cd_vis,'LineWidth',1.5);
xlabel('Hücum Açısı');
ylabel('Sürükleme Katsayısı');
title('Tüm Analizler(cd)');
legend('KGT','CFD-İn','CFD-Vis','Xfoil-İn','Xfoil-Vis');
grid on



%% Kümelenmiş Girdaplar Teorisi Kodu

% n      = Panel sayısı
% AoA    = Hücum açısı
% Gamma  = Girdap şiddeti
% cl     = Taşıma katsayısı
% a      = Matris
% R      = Vsonsuz'un dikey bileşeni
% d      = Havanın yoğunluğu
% Lprime = Taşıma kuvveti

function [cl,AoA,cm] = KGT(AoA,n)

a = zeros(n,n);
R = zeros(n,1);

x_girdap  = (0.0025:0.01:0.9925);
x_kontrol = (0.0075:0.01:0.9975);

a(n,n) = 1;

for i=1:n-1
    for j=1:n
        
        a(i,j)=-1/(2*pi*(x_kontrol(i)-x_girdap(j)));
    
    end
end

Vsonsuz=1.4607;

i=1;
while i<n
    
    R(i)=-Vsonsuz*sind(AoA);
    
    i=i+1;
end

Gamma=a\R;

Lprime=0;

d=1.225;

j=1;
while j<n+1
    
    Lprime=Lprime+d*Vsonsuz*Gamma(j);
    
    j=j+1;
end

c=1;

q_sonsuz=(d*(Vsonsuz)^2)/2;

cl=Lprime/(q_sonsuz*c*1);

cm=-cl/4;

end
