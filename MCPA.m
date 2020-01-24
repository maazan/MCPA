%Constants
q = 1.62*10^-19;
m0 = 9.10956*10^-31;
count = 0; 
e_No = 100;
totalVelocity = 0;
driftVelocity = 0;
%Initialiazaion 
E = 100;
dt = 10E-6;
dV = 0;

x = zeros(e_No,1);
v = zeros(e_No,1); 
tf = 1; 

subplot(2,1,1);
title('Velocity');
xlabel('Time (s)');
ylabel('Velocity (m/s)');
hold on

subplot(2,1,2)
title('Distance');
xlabel('Time (s)');
ylabel('Velocity (m/s)');
hold on


%LOOP
for t = 0:dt:tf
    
    if (rand() < 0.05)
          if (rand() > 0.5)
          v = 0;
          else 
          if (rand() <0.5)
          v = -v;
          end
          end
    end
    v = v + (q*E/m0)*dt;
   
    
    subplot(2,1,1)
    plot(t,v,'.')
    pause(0.05)
    
    x = x + v*dt;
    subplot(2,1,2)
    plot(t,x,'.');
    pause(0.05)
      
        
 
    count = count + 1;
    totalVelocity = totalVelocity + v; 
    driftVelocity = totalVelocity/ count;
    
    subplot(2,1,1)
    plot(t,driftVelocity,'rx')
    pause(0.05);
end
