import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class DynamicMeasles extends PApplet {

//Global Variables
public void setup() 
{
  //Display Geoemtry
   //fullScreen(); displayWidth, displayHeight
  population();

}//End setup
//
public void draw() 
{
  measles();
  circleDraw();
  face(); 
  //DisplayOritentation Finishing Code
  //
  button();
  //End Hover Over Effect
  //
  //Alternate verification that mouseX&Y is on the button
  //println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  //cancel
}//End draw
//
public void keyPressed() 
{
}//End keyPressed
//
public void mousePressed() 
{
  Mouse();
}//End mousePressed
//
//End Main Program
//Global Variables
int black=0xff000000;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float quitButtonX1, quitButtonY1, quitButtonWidth1, quitButtonHeight1;
float quitButtonX2, quitButtonY2, quitButtonWidth2, quitButtonHeight2;
int red=0xffC42B1C, white=0xffFFFFFF, buttonColour, resetWhite=0xffFFFFFF, buttonColour1, buttonColour2, green=0xff75D557, yellow=0xffFAE314;
//
public void button() 
{
  PFont titleFont;
  String cancel = "X", restart="Refresh", Loop="stop/start";
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  quitButtonX = centerX-appWidth*0.5f;
  quitButtonY = centerY-appHeight*0.5f;
  quitButtonWidth = appWidth*0.15f;
  quitButtonHeight = appHeight*0.15f;
  //
  quitButtonX1 = centerX-appWidth*0.5f;
  quitButtonY1 = centerY-appHeight*0.075f;
  quitButtonWidth1 = appWidth*0.15f;
  quitButtonHeight1 = appHeight*0.15f;
  //
  quitButtonX2 = centerX-appWidth*0.5f;
  quitButtonY2 = centerY+appHeight*0.345f;
  quitButtonWidth2 = appWidth*0.15f;
  quitButtonHeight2 = appHeight*0.15f;
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {//Hover Over Effect
  buttonColour= red; } else { buttonColour= white; }
  //
  if ( mouseX>quitButtonX1 && mouseX<quitButtonX1+quitButtonWidth1 && mouseY>quitButtonY1 && mouseY<quitButtonY1+quitButtonHeight1) {//Hover Over Effect
  buttonColour1= yellow; } else { buttonColour1= white; }
  //
  if ( mouseX>quitButtonX2 && mouseX<quitButtonX2+quitButtonWidth2 && mouseY>quitButtonY2 && mouseY<quitButtonY2+quitButtonHeight2) {//Hover Over Effect
  buttonColour2= green; } else { buttonColour2= white; }
  //
  //
  titleFont = createFont("Arial", 50);
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 50);
  text(cancel, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite); //Not night mode compatible, must change
  //
  //restart
  fill(buttonColour1);
  rect( quitButtonX1, quitButtonY1, quitButtonWidth1, quitButtonHeight1 );
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 20);
  text(restart, quitButtonX1, quitButtonY1, quitButtonWidth1, quitButtonHeight1 );
  fill(resetWhite); //Not night mode compatible, must change
  //
  //Switch
  fill(buttonColour2);
  rect( quitButtonX2, quitButtonY2, quitButtonWidth2, quitButtonHeight2 );
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 20);
  text(Loop, quitButtonX2, quitButtonY2, quitButtonWidth2, quitButtonHeight2);
  fill(resetWhite);
}//End button
//Global Variables
float radius      = 200;
int numSegments   = 950;//Cut the circumference into many many straight lines
//
public void circleDraw() 
{
  // Find coordinates
  pushMatrix();//Make sure we only move the black ring instead of the whole picture
  translate( width/2, height/2 );//Move the ring to the center of the board
  float k = 6.28318530718f / numSegments;
  for ( int i = 0; i < numSegments; i=i+1 ) 
  {
  //"for loop"
  float x = cos(k*i) * radius;//Find the tangent line coordinates
  float y = sin(k*i) * radius;

  // Draw tangent lines
  line(x, y, x + 2*y, y - 2*x);//draw the tangent lines
  line(x, y, x - 2*y, y + 2*x);
  }
  popMatrix();//Restore the cordinates of pushMatrix()
//
}//End circle
//Global Variables
int appWidth, appHeight;
int smallerGeometryDimension, reset;
float rectFacex, rectFacey, rectFacewidth, rectFaceheight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, EyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
//
public void face() 
{  
  //Left Eye
  //rect();
  ellipse(leftEyeX, leftEyeY, EyeDiameter, EyeDiameter);
  //
  //Right Eye
  //rect();
  ellipse(rightEyeX, rightEyeY, EyeDiameter, EyeDiameter);
  //
  //Nose
  //rect();
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  //
  //Mouth
  //rect();
  //int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  //int mouthHeight = int ( mouthOpen );
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen);
  line( mouthX1, mouthY1, mouthX2, mouthY2 ); //Notice the END CAPS
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight);
}//End face
public void measles() 
{
  //Measle
  float measleDiameter = random(smallerGeometryDimension/100, smallerGeometryDimension/25);
  float measleRadius = measleDiameter/2;
  float measleX = random(rectFacex+measleRadius, rectFacex+rectFacewidth-measleRadius);
  float measleY = random(appHeight*0+measleRadius, appHeight-measleRadius);
  Boolean nightMode=false; 
  //color red =#FF0000, measleColour=red;
  int measleColour = ( nightMode==false ) ? color(255, random(0, 50), random(120)) : color(255, random(0, 50), random(120)); //ternaty operator for day:night
  int whiteReset=0xffFFFFFF;
  //rect(measleX-measleRadius, measleY-measleRadius, measleDiameter, measleDiameter);
  //random values returned given other variables
  noStroke();
  fill(measleColour);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
}
//End measles
public void Mouse()
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight && mouseButton == LEFT) exit();
  //
  if (mouseX>quitButtonX1 && mouseX<quitButtonX1+quitButtonWidth1 && mouseY>quitButtonY1 && mouseY<quitButtonY1+quitButtonHeight1 && mouseButton == LEFT) 
  { reset();}
  //
  if (mouseX>quitButtonX2 && mouseX<quitButtonX2+quitButtonWidth2 && mouseY>quitButtonY2 && mouseY<quitButtonY2+quitButtonHeight2 &&  mouseButton == LEFT &&!isLooping())
  { loop();} else {noLoop();}
}//End Mouse
public void population()
{
  //Landscape, square or portrait
  appWidth = width; //Swap with displayWidth, displayHeight for testing
  appHeight = height;
  println(width, height, displayWidth, displayHeight); //Verfication of value
  println(appWidth, appHeight); //Verfication of value
  //
  //Display Orientation
  //Purpose: a few comparisions of IFs to ID orientation (similar to image() aspect ratio)
  //Computer tells us the orientation, important for cell phone orientation
  //-tell user specific orientation
  //if ( appWidth >= appHeight ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation", instruct="Bru, turn your phone";
  String orientation = (appWidth >= appHeight) ? ls : p;
  println(DO, orientation); //Verification of value
  if (orientation==p) println(instruct);
  //With Strings, easier to print to console or canvas
  //
  //Variable Populration
  smallerGeometryDimension = appHeight; //user told to turn phone, always landscape or square
  reset = smallerGeometryDimension/smallerGeometryDimension; // returns "1" //default value for resetting parameters
  rectFacex =  appWidth*0.5f - smallerGeometryDimension*0.5f;
  rectFacey = appHeight*0;
  rectFacewidth = smallerGeometryDimension;
  rectFaceheight = smallerGeometryDimension;
  faceX = appWidth*0.5f;
  faceY = appHeight*0.5f;
  faceDiameter = smallerGeometryDimension;
  leftEyeX = appWidth*0.5f - smallerGeometryDimension*1/4.9f;
  leftEyeY = appHeight*0.5f - smallerGeometryDimension*0.25f;
  rightEyeX = appWidth*0.5f + smallerGeometryDimension*1/4.9f;
  rightEyeY = leftEyeY;
  EyeDiameter = smallerGeometryDimension*0.25f;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*6/8;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerGeometryDimension*1/4;
  noseX1 = appWidth/2;
  noseY1 = leftEyeY;
  noseX2 = noseX1 - leftEyeY/2;
  noseY2 = faceY;
  noseX3 = noseX1 + rightEyeY/2;
  noseY3 = noseY2;
  //

  //Face: Circle = Circle, inscribed in a square
  ///Center a circle on display orienttion (landscape)
  //
  rect(rectFacex, rectFacey, rectFacewidth, rectFaceheight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End population
//Global Variables
public void reset() {
  Boolean measlesOn=false;
  if (measlesOn == false) {
    //rect(rectFacex, rectFacey, rectFacewidth, rectFaceheight);
    ellipse(faceX, faceY, faceDiameter, faceDiameter);
    face();
  }
}//End reset
  public void settings() {  size(600, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "DynamicMeasles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
