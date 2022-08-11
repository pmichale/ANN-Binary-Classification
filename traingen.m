function a = traingen(N)
%% random body
%meze a1
a1_l = -4;
a1_h = 2;
%meze a2
a2_l = 2;
a2_h = 5;

a1 = a1_l + (a1_h - a1_l).*rand(1,N);
a2 = a2_l + (a2_h - a2_l).*rand(1,N);
a = [a1',a2'];
%% rozdeleni
bb = 1;
cc = 1;
b=[0,0,0];
c=[0,0,0];
for i = 1:length(a1)
    if 0.4444444*(a1(i)+2)^2+2.3668639*(a2(i)-3)^2 < 1
        a(i,3) = 1;
        b(bb,:) = a(i,:);
        bb = bb+1;
    else
        a(i,3) = 0;
        c(cc,:) = a(i,:);
        cc = cc+1;
    end
end