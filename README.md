# Traffic-Light-Controller

In this project, a Moore finite state machine (FSM) is used to design an efficient and intelligent traffic light controller. The language used for the implementation is
Verilog. This model takes care of traffic on any junction consisting of four roads. The system helps to reduce the unnecessary waiting period for vehicles at junctions. It
also reduces the density of vehicles on roads which increases due to the long waiting period.


#Explanation:
(I) when there are no cars on country road ,sensor X detects 0, and it will stays in the same state S0.

(ii) when sensor detects any car on country road X will become 1 and state will change S0 to S1. At S1 state highway light will be Yellow and country light will be Red.

(iii) From S1 to S2 we will be having a delay Yellow to Red, for which transition time is 3 times unit. At S2 state highway and country both light will be red. and for S2 to
S3 we will be having Red to Green, for which transition time is 2 times unit. At S3 state highway light become Red and country light Green.

(iv) Now again we will be checking X, if X is 1 it means still there are cars on country road, so it will stays on the same S3 state, where highway light will be Red and
country light will be Green, and if X is 0 the state will change S3 to S4.

(v) Now for S4 to S0 it will take transition Yellow to Red, the transition time is 3 time unit. And again for S0 state highway light will be red and country light will be red.
