## MATLAB-Energy-Models
This repository contains simulation models developed in MATLAB and Simulink for thermal cooling, RC battery discharge, and PID closed-loop control. These models demonstrate fundamental energy system dynamics and feedback control behavior.
# 1. Thermal Cooling Model
A first-order thermal cooling system was simulated using Newton's Law of Cooling. The ODE was solved with ode45, and the temperature response was plotted and saved.
File: thermal_cooling_model.m
Output: cooling_response.png
# 2. RC Battery Model
A first-order RC circuit was modeled to show voltage decay, power dissipation, and stored energy in a capacitor-like battery system.
File: RC_battery_model.m
Outputs: RC_voltage.png, RC_power.png, RC_energy.png
# 3. PID Closed-Loop Control (Simulink)
A PID feedback system was implemented in Simulink using a step input, summation error block, PID controller, and first-order plant 1/(5s+1). System response was visualized in slow, fast, and critically damped PID modes.
File: Simulink_PID.slx
Outputs: PID_slow.png, PID_fast.png, PID_critical.png
# Key Takeaways
- First-order systems can be modeled with ODEs
- RC discharge demonstrates energy decay behavior
- PID allows shaping response speed, overshoot, and stability
- Simulink enables real-time visual feedback control tuning
