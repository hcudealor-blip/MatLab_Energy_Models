k = 0.03; 
T_inf = 298;      
T0 = 350;

ode = @(t,T) -k*(T - T_inf);
[t,T] = ode45(ode,[0 200],T0);

plot(t,T,'LineWidth',2)
xlabel('Time (s)'); ylabel('Temperature (K)');
title('Thermal Cooling Model')
saveas(gcf,'Figures/cooling_response.png')
