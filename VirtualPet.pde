import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;
import cc.arduino.*;
Arduino arduino; 


void setup() {
  size (500,750);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}
void draw() {
  int rButton = arduino.analogRead(1);
  fill (255,255,255);
//legs
  ellipse(210,490,50,100);
  ellipse(190,520,75,50);
  ellipse(290,490,50,100);
  ellipse(310,520,75,50);
//body
  ellipse(250,380,180,225);
//arms
  ellipse(150,375, 100, 50);
  ellipse(350,375,100,50);
//hands
  ellipse(120,365,50,60);
  ellipse(380,365,50,60);
//ears
  fill(0,0,0);
  triangle (100,75,125,190,200,150);
  triangle (400,75,300,150,375,190);
  ellipse (400,75,25,25);
  ellipse (100,75,25,25);
  triangle (200,250,125,190,200,150);
  triangle (300,250,300,150,375,190);
//head
  ellipse (250,250,250,175);
  fill(255,255,255);
  ellipse (250,275, 190,100);
  fill(0,0,0);
  triangle (250,260,200,225,300,225);
  fill(255,192,203);
  rect (238,230,20,10);
  ellipse(248,220,45,30);
  fill(0,0,0);
  ellipse(240,220,10,10);
  ellipse(500-245,220,10,10);
//eyes
  fill(0,0,0);
  ellipse (200,270,25,35);
  ellipse (300,270,25,35);
//nose
  fill(255,192,203);
  ellipse(250,290,15,10);
//collar
  fill(0,0,0);
  triangle(145,345,170,315,200,330);
  triangle(225,375,200,330,250,335);
  triangle(275,375,250,335,300,330);
  triangle(500-145,345,500-170,315,500-200,330);
  fill(255,192,203);
  ellipse(145,345,10,10);
  ellipse(225,375,10,10);
  ellipse(275,375,10,10);
  ellipse(500-145,345,10,10);
//mouth
    fill(0);
    stroke(2,2,2,1); 
    arc(250,300,25,25,0,PI);
//Light Sensor
  if (rButton < 30){
      fill(255,195,203);
      strokeWeight(10);
      ellipse(200,300,25,10);
      ellipse(500-200,300,25,10);
    }
}

