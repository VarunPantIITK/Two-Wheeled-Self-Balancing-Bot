# Two-Wheeled-Self-Balancing-Bot
Semester Project 2021

Hello I am Varun Pant, UG in dept. of Aerospace Er., IIT Kanpur. This is my first project as student of IIT-Kanpur. I have taken this project in my freshman year under Robotics Club of SnT Council, IIT Kanpur.

## Objectives
- The main objective of this robot is to balance the whole body on two wheels automatically by designing the best possible structure for the body.
- To demonstrate the method and techniques involved in balancing an unstable robotic platform on two wheels.
- To design and implement a complete discrete digital control system with the state space model that will provide robotic stability.
- Design controllers like PID and LQR for two-wheeled robot and their implementation in MATLAB.
- There has been varieties of technique to increase the robotic stability on dynamic environments .One such popular technique used for mobile robots is an inverted pendulum based model. We aim to learn it

## Tasks Accomplished
1. MATLAB-ONRAMP Course [Certificate](https://matlabacademy.mathworks.com/progress/share/certificate.html?id=e9756f63-a6e8-4a29-8bb4-162b6baf939f "View cerificate")
2. Simulink ONRAMP Course [Certificate](https://matlabacademy.mathworks.com/progress/share/certificate.html?id=13fc5e79-e49d-4fbf-b93d-39c0bcbb2199 "View certificate")
3. Assignments- Under the respective assignment number folder in this repository. These assignments were given with the aim to procede with the step by step development of the 2 wheel balancing robot.

## In details
This [research paper](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.657.4398&rep=rep1&type=pdf), was published in International Journal of Mechanical & Mechatronics Engineering _IJMME-IJENS Vol:14 No:03_. The paper concludes that _"A Fuzzy Logic Controller (FLC) which is a non-model based controller and a Linear Quadratic Controller (LQR) which is a model-based controller, and the conventional controller, Proportional Integral Derivative (PID) were implemented and compared on a real time TWIP mobile robot. FLC controller which is non-model based performs better than the LQR and PID controllers in terms faster response and less overshoot, but has higher energy consumption than the other two."_ The study was conclusive of the fact that FLC was best controller. LQR proved to be better than PID.

|**Controllers**|**Rise time (s)**|**Settling time (s)**|**% Overshoot**|**Current (A)**|**Horizontal distance absolute(m)**|
|---|----|---|--|---|----|
|FLC|1.25|2.5|37|8.7|0.05|
|---|----|---|--|---|----|
|LQR|0.8|4.2|80|7.5|0.2|
|---|----|---|--|---|----|
|PID|0.8|6.5|90|7.5|0.23|
|---|----|---|--|---|----|

The traditional linear modelled controllers like PID and LQR have fairly limited working and we need to know detailed physical properties of the system, and in case of complicated systems we need to idealise them, in order to develop a controller for them. However for a FLC niether detailed knowledge of system nor reducing it to an idealised system is needed. What the controller should do is determined by linguistic rules. Moreover if use of tools like Genetic algorithm is incorporated we can get away without knowing much of anything. 

However being novice in field of Robotics, it is always better to start learning things by idealised simplified models and then moving on to generalised complicated cases. Once we know alphabets, only then can we know the sentences. And going by this tried and tested philosophy, as a part of this project, as I am just starting, thereby will stick to use of P.I.D and L.Q.R controllers.

[LQR better than PID](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.545.6096&rep=rep1&type=pdf#:~:text=For%20the%20last%20characteristic%2C%20both,response%20faster%20than%20PID%20controller.&text=It%20shows%20that%20LQR%20control,compared%20to%20PID%20control%20method)

As a part of this project, Optimal Control Theory has been explored. We first looked at the basics of Control theory, the difference between open loop control and closed loop feedback control and the superiority of the latter over former. Then we looked at ideal and linear space-state system and their solutions. The nature of the state at vaious points in space was also explored. The stability of state for both discrete and continous system in space was studied and the criterion was analysed using the mathematical knowledge of Linear Algebra. Following this inearisation around fixed points, controllability, reachability and degrees of controllability was seen. For a controllable system, we can place the poles/Eigen values at any point in space. Thereafter, we designed a penalty function and in order to optimise it, we determined appropriate constant K for the for the LQR. 
Since sensors are expensive and use energy, so employing them for taking all measurements is not not cost effective and energy efficient. So we measure only few of the measurable states and then use the Kalman Filter to estimate the rest of the states using it. We also determined the effect of **System disturbance** and **sensor noise** on the full state estimation done by Kalman filter
Finally we designed a LQG- Linear Quadratic Gaussian controller with the combination of LQR and Kalman filter.

Tools such as MATLAB, Simulink, GIT and GitHub were also explored as a part of this project.

The detailed write-up of the topic is linked as hand wrutten notes in the next section

**Note- LQG controller causes robustness issues for model uncertainties and time delay, i.e too much of either or both of System disturbance and sensor noise. As a consequence of this, a better alternative came up against the Optimal control theory, in 1978, known as the Robust Control Theory.**

## Link to hand-written notes
[Notes link on Google Drive](https://drive.google.com/file/d/1lieE8UyDYbOuoxCS7DPHTnXXDwr0xwfO/view?usp=drivesdk "https://drive.google.com/file/d/1lieE8UyDYbOuoxCS7DPHTnXXDwr0xwfO/view?usp=drivesdk")

## New skills developed or topics explored
1. Optimal Control Theory(LQR, PID, Kalman Filtering etc.)

2. MATLAB and Simulink

3. GIT and GitHub

## References
[https://www.youtube.com/playlist?list=PLMrJAkhIeNNR20Mz-VpzgfQs5zrYi085m](https://www.youtube.com/playlist?list=PLMrJAkhIeNNR20Mz-VpzgfQs5zrYi085m)

[https://in.mathworks.com/help/control/ref/lqr.html](https://in.mathworks.com/help/control/ref/lqr.html)

[https://ocw.mit.edu/courses/aeronautics-and-astronautics/16-30-feedback-control-systems-fall-2010/lecture-notes/MIT16_30F10_lec11.pdf](https://ocw.mit.edu/courses/aeronautics-and-astronautics/16-30-feedback-control-systems-fall-2010/lecture-notes/MIT16_30F10_lec11.pdf)

[http://eprints.gla.ac.uk/3815/1/IEEE_CS_PID_01580152.pdf](http://eprints.gla.ac.uk/3815/1/IEEE_CS_PID_01580152.pdf)

[https://in.mathworks.com/help/control/getstart/designing-pid-controllers-with-the-pid-tuner-gui.html](https://in.mathworks.com/help/control/getstart/designing-pid-controllers-with-the-pid-tuner-gui.html)

[Reference Code of Prof. Steve Brunton - University of Washington](http://faculty.washington.edu/sbrunton/control_bootcamp_code.zip "http://faculty.washington.edu/sbrunton/control_bootcamp_code.zip")

[https://core.ac.uk/reader/19451569](https://core.ac.uk/reader/19451569)

[https://www.youtube.com/watch?v=VFXf1lIZ3p8](https://www.youtube.com/watch?v=VFXf1lIZ3p8)

[https://www.youtube.com/watch?v=QtmVFlZi5T8](https://www.youtube.com/watch?v=QtmVFlZi5T8)

[https://www.youtube.com/watch?v=SY8KtZ2hO9Q](https://www.youtube.com/watch?v=SY8KtZ2hO9Q)

[https://www.theconstructsim.com/ros-projects-exploring-ros-using-2-wheeled-robot-part-1/](https://www.theconstructsim.com/ros-projects-exploring-ros-using-2-wheeled-robot-part-1/)