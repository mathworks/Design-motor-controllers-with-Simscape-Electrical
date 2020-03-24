# Modeling Commutation Logic
### Copyright 2019 The MathWorks, Inc.

This repository contains MATLAB and Simulink files used in the [How to Design Motor Controllers Using Simscape Electrical, Part 3: Modeling Commutation Logic](https://www.youtube.com/watch?v=NH0O1-mjysU&list=PLn8PRpmsu08pqegLB5CqfgZCtuK5UKIrx&index=3) video. Check out the rest of the videos in [this section](#videos).

## Model & Setup

The Simulink model provides the control algorithm that lets you control a BLDC motor at different speeds and simulate motor response. The following picture shows a snapshot of the model which consists of subsystems such as PI-controller, three-phase inverter,  commutation logic and sensor. 

![](model.png)

The provided MATLAB file runs the Simulink model, and uses the simulated data to create an animation of the rotor and phase energizations of the BLDC motor as seen below.

![](animation.gif)

You can do the following with the provided files:

- Run Simulink model (Modeling_commutation_logic.slx) and open up the Data Inspector to view the logged signals such the desired and measured speeds and supplied voltage to the three-phase inverter.

- Run MATLAB file (animateRotorPosition.m) to create the BLDC motor animation. After running the MATLAB file, press any button to start the animation. The MATLAB file runs the Simulink model, and uses the simulated data to animate the BLDC motor.

## Videos & Files
"How to Design Motor Controllers Using Simscape Electrical" video series consists of 5 videos. Click the links below to watch the videos and download the files. 

  - Part 1: Simulating Back-EMF Voltage of a BLDC Motor [[Watch video](https://www.youtube.com/watch?v=JDgvBZbnfPw&list=PLn8PRpmsu08pqegLB5CqfgZCtuK5UKIrx&index=1), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/1-Simulating-back-emf-voltage-of-a-BLDC-motor)]
  - Part 2: Modeling a Three-Phase Inverter [[Watch video](https://www.youtube.com/watch?v=dghUC_IAj1Q&list=PLn8PRpmsu08pqegLB5CqfgZCtuK5UKIrx&index=2), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/2-Modeling-a-three-phase-inverter)]
  - Part 3: Modeling Commutation Logic [[Watch video](https://www.youtube.com/watch?v=NH0O1-mjysU&list=PLn8PRpmsu08pqegLB5CqfgZCtuK5UKIrx&index=3), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/3-Modeling-commutation-logic)]
  - Part 4: Model PWM-Controlled Buck Converters [[Watch video](https://www.youtube.com/watch?v=bMJVmyv76Bs&list=PLn8PRpmsu08pqegLB5CqfgZCtuK5UKIrx&index=4), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/4-Modeling-a-PWM-controlled-buck-converter)]
  - Part 5: An Alternative implementation of PWM Control [[Watch video](https://www.youtube.com/watch?v=_abK4wVDL4Y&list=PLn8PRpmsu08pqegLB5CqfgZCtuK5UKIrx&index=5), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/5-PWM-control-of-a-BLDC-motor)]

Check out [this tech talk video series](https://www.youtube.com/playlist?list=PLn8PRpmsu08qL-EG3DRMtRyokpXQJyhp7) to understand: 
  
  - How brushless DC motors differ from brushed DC motors and how they work 
  - How BLDC motors can be controlled using six-step commutation (trapezoidal control)
  - The different components of a BLDC motor control algorithm such as PWM control, commutation logic, three-phase inverter and sensor. 

  ![](algorithm.png)
