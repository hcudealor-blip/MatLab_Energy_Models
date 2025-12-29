R =0.5;  
C = 100; 
V0 = 4.2; 
I = V ./ R
P = V .* I
E = 0.5 * C * (V.^2)
ode = @(t,V) -(1/(R*C))*V;
[t,V] = ode45(ode,[0 500],V0);

% --- Voltage vs time 
figure;
plot(t,V,'LineWidth',2)
xlabel('Time (s)'); ylabel('Voltage (V)');
title('RC Battery Discharge - Voltage');
saveas(gcf,'Figures/RC_voltage.png');

% --- Power vs time ---
figure;
plot(t,P,'LineWidth',2)
xlabel('Time (s)'); ylabel('Power (W)');
title('RC Battery Discharge - Power');
saveas(gcf,'Figures/RC_power.png');

% --- Energy vs time ---
figure;
plot(t,E,'LineWidth',2)
xlabel('Time (s)'); ylabel('Energy (J)');
title('RC Battery Discharge - Stored Energy');
saveas(gcf,'Figures/RC_energy.png');
