# DE10_Lite_SONAR
A DE10 Lite based FPGA SONAR mini-project connecting a HC-SR04 ultrasonic sensor as well as generating a radar-like interface in VGA.

The SONAR is uses the HC-SR04 ultrasonic module from Arudino, connected to two ArduinoIO ports as well as +5V VCC and GND in the DE10 Lite. It makes use of a pipelined version of my previous 7-segment display controller, displaying the distance in cm (the dotted 7-Seg display is the one indicating meters)

The distance is also displayed in a Verilog-generated VGA interface where each pixel in the X-Axis corresponds to each centimeter of distance.

Below you can find a video as well as the connection and 7-Segment Displays measuring the distance from the Table to the roof (measuring 1m87cm with the dot separating both 1.87).

A more advanced RADAR system measuring in 3d and individuating the exact position in space and rotating periodically 360° could be build from this project given that one has more advanced equipment at one's disposal. 


https://user-images.githubusercontent.com/123891760/218179986-d50b93df-2a05-4e60-8498-c0f525d78a93.mp4

![radar1](https://user-images.githubusercontent.com/123891760/218180003-ef06a65f-dd7f-4e8e-a6a2-0bc1871ef8c3.jpg)

![radar3](https://user-images.githubusercontent.com/123891760/218180241-536b0d93-b84d-488b-843e-d2fa5fc2d627.jpg)
