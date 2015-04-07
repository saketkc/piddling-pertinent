a=rand(2000000,1);
b=zeros(2000000,1);
for i=1:2000000
if a(i)>0.5
b(i) = %pi+acos(4*a(i)-3);
else
b(i) = acos(1-4*a(i));
end
end

scf(0);
freq = histplot(20,b);
rfreq = freq/2000000;
bar(.025+(0:19)/20,20*rfreq);
xlabel("Class")
ylabel("Distribution")

scf(1);
freq = histplot(20,a);
rfreq = freq/2000000;
bar(.025+(0:19)/20,20*rfreq);
xlabel("Class")
ylabel("Distribution")
