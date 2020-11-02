# Modeling Commutation Logic
### Copyright 2019 The MathWorks, Inc.

This repository contains MATLAB and Simulink files used in the [How to Design Motor Controllers Using Simscape Electrical, Part 3: Modeling Commutation Logic](https://www.mathworks.com/videos/how-to-design-motor-controllers-using-simscape-electrical-part-3-modeling-commutation-logic-1576044161917.html) video. Check out the rest of the videos in [this section](#videos-and-files).

## Model and Setup

The Simulink model provides the control algorithm that lets you control a BLDC motor at different speeds and simulate motor response. The following picture shows a snapshot of the model which consists of subsystems such as PI-controller, three-phase inverter,  commutation logic and sensor. 

![](images/model.png)

The provided MATLAB file runs the Simulink model, and uses the simulated data to create an animation of the rotor and phase energizations of the BLDC motor as seen below.

<p align="center">
<img src="images/animation.gif" width="40%">
</p>

You can do the following with the provided files:

- Run Simulink model (Modeling_commutation_logic.slx) and open up the Data Inspector to view the logged signals such the desired and measured speeds and supplied voltage to the three-phase inverter.

- Run MATLAB file (animateRotorPosition.m) to create the BLDC motor animation. After running the MATLAB file, press any button to start the animation. The MATLAB file runs the Simulink model, and uses the simulated data to animate the BLDC motor.

## Videos and Files
"How to Design Motor Controllers Using Simscape Electrical" video series consists of 5 videos. Click the links below to watch the videos and download the files. 

  - Part 1: Simulating Back-EMF Voltage of a BLDC Motor [[Watch video](https://www.mathworks.com/videos/how-to-design-motor-controllers-using-simscape-electrical-part-1-simulating-back-emf-voltage-of-a-bldc-motor-1565241566392.html), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/1%20Simulating%20back%20emf%20voltage%20of%20a%20BLDC%20motor)]
  - Part 2: Modeling a Three-Phase Inverter [[Watch video](https://www.mathworks.com/videos/how-to-design-motor-controllers-using-simscape-electrical-part-2-modeling-a-three-phase-inverter-1567758371716.html), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/2%20Modeling%20a%20three%20phase%20inverter)]
  - Part 3: Modeling Commutation Logic [[Watch video](https://www.mathworks.com/videos/how-to-design-motor-controllers-using-simscape-electrical-part-3-modeling-commutation-logic-1576044161917.html), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/3%20Modeling%20commutation%20logic)]
  - Part 4: Model PWM-Controlled Buck Converters [[Watch video](https://www.mathworks.com/videos/how-to-design-motor-controllers-using-simscape-electrical-part-4-modeling-a-pwm-controlled-buck-converter-1578478768258.html), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/4%20Modeling%20a%20PWM%20controlled%20buck%20converter)]
  - Part 5: An Alternative implementation of PWM Control [[Watch video](https://www.mathworks.com/videos/how-to-design-motor-controllers-using-simscape-electrical-part-5-an-alternative-implementation-of-pwm-control-1579758063226.html), [Download files](https://github.com/mathworks/Design-motor-controllers-with-Simscape-Electrical/tree/master/5%20PWM%20control%20of%20a%20BLDC%20motor)]
  
Check out [this tech talk video series](https://www.mathworks.com/videos/series/brushless-dc-motors.html) to understand: 
  
- How brushless DC motors differ from brushed DC motors and how they work
- How BLDC motors can be controlled using six-step commutation (trapezoidal control)
- The different components of a BLDC motor control algorithm such as PWM control, commutation logic, three-phase inverter and sensor.


  ![](algorithm.png)
