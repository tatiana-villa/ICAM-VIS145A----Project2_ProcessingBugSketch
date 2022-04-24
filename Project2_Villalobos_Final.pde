PImage bg_img; //<>//
int startx = 100;
int starty = 100;
int starttime = 0;

void setup() {
  size(100, 100);
}
 
void draw() {
  background(0);
  String[] args = {""};
  SecondApplet sa = new SecondApplet();
  ThirdApplet ta = new ThirdApplet();
  FourthApplet fa = new FourthApplet();
  
  PApplet.runSketch(args, sa);
  for(int i = 0; i < 600 * 100; i++){
    starttime++;
  }
  
  if(starttime > 600 * 100){
      noLoop();
  }
  starttime = 0;
  PApplet.runSketch(args, ta);
  
  if(starttime > 600 * 100){
      noLoop();
  }
  starttime = 0;
  PApplet.runSketch(args, fa);
 
  if(starttime > 600 * 10){
    noLoop();
  } 
    if(millis() > 60 * 70){
      exit();
    }
}     
 
public class SecondApplet extends PApplet { 
  public void settings() {
    size(1000, 1000);
  }
  public void draw() {
    startx++;
    starty++;
    background(192, 30, 30);
    noFill();
    stroke(85, 255, 0);
    if(startx > 0 && starty > 0){
      ellipse(60 + startx, 20 + starty, 200, 500);
      rect(30 + startx, 40 + starty, 400, 300);
      ellipse(40 + startx, 30 + starty, 800, 200);
      ellipse(20 + startx, 10 + starty, 400, 500);
      line(80 + startx, 80 + starty, 600, 700);
      ellipse(70 + startx, 70 + starty, 300, 600);
      rect(10 + startx, 60 + starty, 500, 200);
      ellipse(50 + startx, 90 + starty, 700, 200);
    }
    
    if(millis() > 60 * 100){
        exit();
        noLoop();
        surface.setVisible(false);
      }
  } 
  
}
 
 public class ThirdApplet extends PApplet {
   
  public void settings() {
    size(1000, 1000);
  }
  public void draw() {
   startx++;
   starty++;
   background(51, 153,255);
   stroke(255, 255, 0);
   noFill();
   if(startx > 0 && starty > 0){
     line(40 + startx, 50 + starty, 300, 200);
     ellipse(10 + startx, 60 + starty, 600, 700);
     rect(50 + startx, 20 + starty, 1000, 2000);
     line(90 + startx, 10 + starty, 500, 800);
     ellipse(80 + startx, 40 + starty, 80, 200);
     rect(70 + startx, 30 + starty, 70, 100);
     line(90 + startx, 10 + starty, 500, 800);
     rect(80 + startx, 40 + starty, 80, 200);
     line(70 + startx, 30 + starty, 70, 100);
     rect(70 + startx, 30 + starty, 70, 100);
     line(90 + startx, 10 + starty, 500, 800);
     rect(80 + startx, 40 + starty, 80, 200);
     ellipse(70 + startx, 30 + starty, 70, 100);
   }
      if(millis() > 60 * 100){
        exit();
        noLoop();
        surface.setVisible(false);
      }
  }
 }
  
 public class FourthApplet extends PApplet {
   
  public void settings() {
    size(1000, 1000);
  }
  public void draw() {
    startx++;
    starty++;
    background(224, 236, 51);
    noFill();
    stroke(232, 31, 44);
    if(startx > 0 && starty > 0){
      line(100 + startx, 90 + starty, 300, 200);
      line(89 + startx, 65 + starty, 450, 90);
      ellipse(45 + startx, 63 + starty, 400, 210);
      ellipse(67 + startx, 20 + starty, 290, 190);
      line(23 + startx, 96 + starty, 320, 830);
      rect(43 + startx, 35 + starty, 100, 320);
      ellipse(50 + startx, 90 + starty, 1093, 800);
      rect(32 + startx, 13 + starty, 865, 749);
      rect(90 + startx, 88 + starty, 250, 450);
      ellipse(43 + startx, 62 + starty, 310, 269);
      rect(21 + startx, 89 + starty, 540, 790);
      rect(40 + startx, 63 + starty, 327, 856);
      ellipse(32 + startx, 43 + starty, 765, 329);
    }
     if(millis() > 60 * 100){
        exit();
        noLoop();
        surface.setVisible(false);
      }
  }
 }
