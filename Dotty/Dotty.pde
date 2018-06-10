import moonlander.library.*;
// Minim must be imported when using Moonlander with soundtrack.
import ddf.minim.*;Moonlander moonlander;

void setup() {
    noCursor(); //hide mmouse
    // Parameters:  
    // - PApplet
    // - soundtrack filename (relative to sketch's folder)
    // - beats per minute in the song
    // - how many rows in Rocket correspond to one beat
    moonlander = Moonlander.initWithSoundtrack(this, "Furious Freak.mp3", 160, 8);
    // Other initialization code goes here.
     //size(1920, 1080, P2D);
     //size(800, 600, P2D);
   fullScreen(P2D);
    moonlander.start();
}

void draw0(){  //palluroiden lukumäärä lisääntyy
 background(0);     
 float w=(float)width;
 //float h= (float)height;
 float t=(float)millis()/1000.0;
 float size = 60;
 
 int num = moonlander.getIntValue("number");
 int r = moonlander.getIntValue("red");
 int g = moonlander.getIntValue("green");
 int b = moonlander.getIntValue("blue");
  
 for(int i=0; i<num; i++){
   float position_x=(w/2.0-size/2)*sin(t+0.3*(float)i)+w/2.0-size/2.0;
   float position_y=(w/2.0-size/2)*sin(t*PI+0.3*(float)i)+w/2.0-size/2.0;
   fill(r,g,b);//väri
   ellipse(position_x, position_y, 40, 80); 
}
}


void draw1(){  
 background(0);
      
 float w=(float)width;
 //float h= (float)height;
 float t=(float)millis()/1000.0;
 float size = 60;
 
 for(int i=0; i<40; i++){//lisätty
 float position_x=(w/2.0-size/2)*sin(t+0.3*(float)i)+w/2.0-size/2.0;
 float position_xx=(w/2.0-size/2)*sin(t+0.5*(float)i)+w/2.0-size/2.0;
 float position_y=(w/2.0-size/2)*sin(t*PI+0.3*(float)i)+w/2.0-size/2.0;
 float position_yy=(w/2.0-size/2)*sin(t*PI)+w/2.0-size/2.0;
 float position_yyy=(w/2.0-size/2)*sin(t*PI+0.8*(float)i)+w/2.0-size/2.0;
 float position_xxx=(w/2.0-size/2)*sin(t)+w/2.0-size/2.0;

 int r = moonlander.getIntValue("red");
 int g = moonlander.getIntValue("green");
 int b = moonlander.getIntValue("blue");

ellipse(position_x, position_y, 40, 80);
fill(r,g,b);
rect(position_xx, position_yy, 20, 20);

fill(r,g,b);
ellipse(position_x, position_y, 15, 15);
fill(r,g,b);
rect(position_xxx, position_yyy, 30, 30);
}
}

void draw3(){

     double bg_red = moonlander.getValue("background_red");
    // All values in Rocket are floats; however, there's 
    // a shortcut for querying integer value (getIntValue)
    // so you don't need to cast.
    int bg_green = moonlander.getIntValue("background_green");
    int bg_blue = moonlander.getIntValue("background_blue"); 
    // Use values to control anything (in this case, background color).
    background((int)bg_red, bg_blue, bg_green);
     
 float w=(float)width;
 float h= (float)height;
 float t=(float)millis()/1000.0;
 float size = 60;
 
 for(int i=0; i<30; i++){//lisätty
 float position_x=(w/2.0-size/2)*sin(t+0.3*(float)i)+w/2.0-size/2.0;
 float position_xx=(w/2.0-size/2)*sin(t+0.5*(float)i)+w/2.0-size/2.0;
 float position_y=(w/2.0-size/2)*sin(t*PI+0.3*(float)i)+w/2.0-size/2.0;
 float position_yy=(w/2.0-size/2)*sin(t*PI)+w/2.0-size/2.0;
 float position_yyy=(w/2.0-size/2)*sin(t*PI+0.8*(float)i)+w/2.0-size/2.0;
 float position_xxx=(w/2.0-size/2)*sin(t)+w/2.0-size/2.0;

 int r = moonlander.getIntValue("red");
 int g = moonlander.getIntValue("green");
 int b = moonlander.getIntValue("blue");
  
ellipse(position_x, position_y, 40, 100);
fill(r,g,b);
rect(position_xx, position_yy, 20, 20);

fill(r,g,b);
ellipse(position_x, position_y, 20, 20);
fill(r,g,b);
rect(position_xxx, position_yyy, 40, 40);
}
}

void draw4(){
     double bg_red = moonlander.getValue("background_red");
    // All values in Rocket are floats; however, there's 
    // a shortcut for querying integer value (getIntValue)
    // so you don't need to cast.
    int bg_green = moonlander.getIntValue("background_green");
    int bg_blue = moonlander.getIntValue("background_blue");
    // Use values to control anything (in this case, background color).
    background((int)bg_red, bg_blue, bg_green);
     
 float w=(float)width;
 float h= (float)height;
 float t=(float)millis()/1000.0;
 float size = 60;
 
 for(int i=0; i<30; i++){//lisätty
 float position_x=(w/2.0-size/2)*sin(t+0.3*(float)i)+w/2.0-size/2.0;
 float position_xx=(w/2.0-size/2)*sin(t+0.5*(float)i)+w/2.0-size/2.0;
 float position_y=(w/2.0-size/2)*sin(t*PI+0.3*(float)i)+w/2.0-size/2.0;
 float position_yy=(w/2.0-size/2)*sin(t*PI)+w/2.0-size/2.0;
 float position_yyy=(w/2.0-size/2)*sin(t*PI+0.8*(float)i)+w/2.0-size/2.0;
 float position_xxx=(w/2.0-size/2)*sin(t)+w/2.0-size/2.0;

 int r = moonlander.getIntValue("red");
 int g = moonlander.getIntValue("green");
 int b = moonlander.getIntValue("blue");
  
ellipse(position_x, position_y, 20, 50);
fill(r,g,b);//väri
rect(position_xx, position_yy, 10, 10);

fill(r,g,b);//väri 
ellipse(position_x, position_y, 10, 10);
fill(r,g,b);//väri
rect(position_xxx, position_yyy, 20, 20);
}
}

void drawmusta(){
  background(0);
}
void drawwhite(){
  background(255);
}

void draw6(){

    double bg_red = moonlander.getValue("background_red");
    int bg_green = moonlander.getIntValue("background_green");
    int bg_blue = moonlander.getIntValue("background_blue"); 
    background((int)bg_red, bg_blue, bg_green);
    
 float w=(float)width;
 float h= (float)height;
 float t=(float)millis()/1000.0;
 float size = 60;
 
 for(int i=0; i<30; i++){//lisätty
 float position_x=(w/2.0-size/2)*sin(t+0.3*(float)i)+w/2.0-size/2.0;
 float position_xx=(w/2.0-size/2)*sin(t+0.5*(float)i)+w/2.0-size/2.0;
 float position_y=(w/2.0-size/2)*sin(t*PI+0.3*(float)i)+w/2.0-size/2.0;
 float position_yy=(w/2.0-size/2)*sin(t*PI)+w/2.0-size/2.0;
 float position_yyy=(w/2.0-size/2)*sin(t*PI+0.8*(float)i)+w/2.0-size/2.0;
 float position_xxx=(w/2.0-size/2)*sin(t)+w/2.0-size/2.0;

 float position_x2=(w/2.0-size/4)*cos(t+0.3*(float)i)+w/2.0-size/2.0;
 float position_y2=(w/2.0-size/4)*sin(t*PI+0.3*(float)i)+w/2.0-size/2.0;
 
 int r = moonlander.getIntValue("red");
 int g = moonlander.getIntValue("green");
 int b = moonlander.getIntValue("blue");
  
ellipse(position_x2, position_y2, 30, 70); 
ellipse(position_x, position_y, 30, 70);

fill(r,g,b);
rect(position_xx, position_yy, 20, 20);
fill(r,g,b); 
ellipse(position_x, position_y, 20, 20);
fill(r,g,b);
rect(position_xxx, position_yyy, 40, 40);
}
}

void draw7(){  //2 neliötä

    double bg_red = moonlander.getValue("background_red");
    int bg_green = moonlander.getIntValue("background_green");
    int bg_blue = moonlander.getIntValue("background_blue");
    background((int)bg_red, bg_blue, bg_green);
    
 float w=(float)width;
 float h= (float)height;
 float t=(float)millis()/1000.0;
 float size = 60;
 //int num = moonlander.getIntValue("number");
 for(int i=0; i<30; i++){
 float position_xx=(w/2.0-size/2)*sin(t+0.5*(float)i)+w/2.0-size/2.0;
 float position_yy=(w/2.0-size/2)*sin(t*PI)+w/2.0-size/2.0;
 float position_yyy=(w/2.0-size/2)*sin(t*PI+0.8*(float)i)+w/2.0-size/2.0;
 float position_xxx=(w/2.0-size/2)*sin(t)+w/2.0-size/2.0;
 
 int r = moonlander.getIntValue("red");
 int g = moonlander.getIntValue("green");
 int b = moonlander.getIntValue("blue");

fill(r,g,b);
rect(position_xx, position_yy, 20, 20);
fill(r,g,b);
rect(position_xxx, position_yyy, 40, 40);
}
}

void draw8(){  //3 neliötä
    double bg_red = moonlander.getValue("background_red");
    int bg_green = moonlander.getIntValue("background_green");
    int bg_blue = moonlander.getIntValue("background_blue");
    background((int)bg_red, bg_blue, bg_green);
    
 float w=(float)width;
 float t=(float)millis()/1000.0;
 float size = 60;
 //int num = moonlander.getIntValue("number");

 for(int i=0; i<30; i++){
 float position_xx=(w/2.0-size/2)*sin(t+0.5*(float)i)+w/2.0-size/2.0;
 float position_yy=(w/2.0-size/2)*sin(t*PI)+w/2.0-size/2.0;
 float position_yyy=(w/2.0-size/2)*sin(t*PI+0.8*(float)i)+w/2.0-size/2.0;
 float position_xxx=(w/2.0-size/2)*sin(t)+w/2.0-size/2.0;

 float position_x2=(w/2.0-size/4)*cos(t+0.3*(float)i)+w/2.0-size/2.0;
 float position_y2=(w/2.0-size/4)*sin(t*PI+0.3*(float)i)+w/2.0-size/2.0;
 
 int r = moonlander.getIntValue("red");
 int g = moonlander.getIntValue("green");
 int b = moonlander.getIntValue("blue");
   
fill(r,g,b);
rect(position_xx, position_yy, 20, 20); 
rect(position_x2, position_y2, 20, 20); 
fill(r,g,b);//väri
rect(position_xxx, position_yyy, 40, 40);
}
}

void drawvarina(){
  background(0);
  for (int i = 0; i < 10; i++) {
    float x = random(width);
    float y = random(height);
    
 int r = moonlander.getIntValue("red");
 int g = moonlander.getIntValue("green");
 int b = moonlander.getIntValue("blue");

fill(r,g,b);
    ellipse(x, y, 30, 60);  //text("HELLO", x, y);
  }
  if (frameCount % 100 == 5) println(frameRate);
}


void drawtext(){
  background(0);
  textSize(32);
  textAlign(CENTER);
  drawType(width * 0.5); 
}

void drawType(float x) {
  line(x, 0, x, 65);
  line(x, 220, x, height);
  fill(100);
  text("MUSIC CREDITS:", x, 350);
  fill(255);
  text("Furious Freak, Kevin MacLeod", x, 450);
  fill(200);
  text("(incompetech.com), Licensed under Creative Commons: By Attribution 3.0 License", x, 500);
  fill(200);
  text("http://creativecommons.org/licenses/by/3.0/", x, 550);
  
 float w=(float)width;
 float t=(float)millis()/1000.0;
 float size = 100;
 
 for(int i=0; i<30; i++){  
 float position_yyy=(w/2.0-size/2)*sin(t*PI+0.8*(float)i)+w/2.0-size/2.0;
 float position_xxx=(w/2.0-size/2)*sin(t)+w/2.0-size/2.0;
 rect(position_xxx, position_yyy, 40, 40);
 } 
}

void drawendtext(){
  background(0);
  textAlign(CENTER); 
  textSize(32);
  fill(100);
  text("GRAFFATHON 2018:", width/2, 350); 
  fill(255);
  text("by VikuViku", width/2, 450);

 float w=(float)width;
 float t=(float)millis()/1000.0;
 float size = 60;
 
 for(int i=0; i<30; i++){
  
 float position_yyy=(w/2.0-size/2)*sin(t*PI+0.8*(float)i)+w/2.0-size/2.0;
 float position_xxx=(w/2.0-size/2)*sin(t)+w/2.0-size/2.0;
  //fill(r,g,b);//väri
 rect(position_xxx, position_yyy, 40, 40);
 } 
}

void drawexit(){
exit();
}


void draw(){
  background(0);
  moonlander.update(); 
  int scene=moonlander.getIntValue("scene");
 
  if(scene==0){  //start/end
    draw0();
  }
  if(scene==1){
    draw1();
  }
   if(scene==3){
    draw3();
  }
   if(scene==4){
    draw4();
  }
   if(scene==5){  //black
    drawmusta();
  }
  if(scene==6){
   draw6();
  }
    if(scene==7){  //neliot
   draw7();
  }
  
   if(scene==8){ //neliot
   draw8();
  }
  
   if(scene==10){ //white
   drawwhite();
  }
  
  if(scene==11){  //varina 11
   drawvarina();
  }
   if(scene==20){ //music
   drawtext();
 }
 
    if(scene==21){ //2018
   drawendtext();
 }

   if(scene==22){  //exit
   drawexit();
 }
 
}
  
