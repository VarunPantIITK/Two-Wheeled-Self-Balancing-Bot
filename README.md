# Two-Wheeled-Self-Balancing-Bot
Semester Project 2021

Hello I am Varun Pant, 1st year UG in dept. of Aerospace Er., IIT Kanpur. This is my first project as student of IIT-Kanpur. I have taken this project in my freshman year under Robotics Club of SnT Council, IIT Kanpur.

## Objectives
- The main objective of this robot is to balance the whole body on two wheels automatically by designing the best possible structure for the body.
- To demonstrate the method and techniques involved in balancing an unstable robotic platform on two wheels.
- To design and implement a complete discrete digital control system with the state space model that will provide robotic stability.
- Design controllers like PID and LQR for two-wheeled robot and their implementation in MATLAB.
- There has been varieties of technique to increase the robotic stability on dynamic environments .One such popular technique used for mobile robots is an inverted pendulum based model. We aim to learn it

## Tasks Accomplished
1. MATLAB-ONRAMP Course [Certificate](https://matlabacademy.mathworks.com/progress/share/certificate.html?id=e9756f63-a6e8-4a29-8bb4-162b6baf939f "View cerificate")
2. Simulink ONRAMP Course [Certificate](https://matlabacademy.mathworks.com/progress/share/certificate.html?id=13fc5e79-e49d-4fbf-b93d-39c0bcbb2199 "View certificate")
3. Assignments- Under the respective assignment number folder in this repository


_More Coming Soon_

## Project Summary
_Coming soon_

## In details
This [research paper](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.657.4398&rep=rep1&type=pdf), was published in International Journal of Mechanical & Mechatronics Engineering _IJMME-IJENS Vol:14 No:03_. The paper concludes that _"A Fuzzy Logic Controller (FLC) which is a non-model based controller and a Linear Quadratic Controller (LQR) which is a model-based controller, and the conventional controller, Proportional Integral Derivative (PID) were implemented and compared on a real time TWIP mobile robot. FLC controller which is non-model based performs better than the LQR and PID controllers in terms faster response and less overshoot, but has higher energy consumption than the other two."_ The study was conclusive of the fact that FLC was best controller. LQR proved to be better than PID.

|**Controllers**|**Rise time (s)**|**Settling time (s)**|**% Overshoot**|**Current (A)**|**Horizontal distance absolute(m)**|
|---|----|---|--|---|----|
|FLC|1.25|2.5|37|8.7|0.05|
|---|----|---|--|---|----|
|LQR|0.8|4.2|80|7.5|0.2|
|---|----|---|--|---|----|
|PID|0.8|6.5|90|7.5|0.23|

The traditional linear modelled controllers like PID and LQR have fairly limited working and we need to know detailed physical properties of the system, and for complicated systems they need to be idealised to develop a controller for them. However for a FLC we do not need detailed knowledge of system nor reducing it to an idealised system is needed. What the controller should do is determined by linguistic rules. Moreover if use of tools like Genetic algorithm is incorporated we can get away without knowing much of anything. 

However being novice in field of Robotics, it is always better to start learning things by idealised simplified models and then moving on to generalised complicated cases. Once we know alphabets, only then can we know the sentences. And going by this tried and tested philosophy, as a part of this project, as I am just starting, thereby will stick to use of P.I.D and L.Q.R controllers. _Only if time permits then FLC will be explored._;) 

## Link to hand-written notes
_Coming soon_

## New skills developed or topics explored
1. Effectively searching Google :)
2. Git and Github basics
3. MATLAB
4. Simulink
5. C.A.D.
6. P.I.D. Controller
7. L.Q.R Controller
8. Kalman Filtering
