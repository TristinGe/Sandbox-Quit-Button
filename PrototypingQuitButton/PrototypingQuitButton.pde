//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color red=#C42B1C, white=#FFFFFF, buttonColour, resetWhite=#FFFFFF;//Notice Nightmode blue values
//
void setup() 
{ 
  size(400, 300); //fullScreen(), displayWidth, displayHeight
  //Landscape, not portrait or square
  String landscape = "You are good to go!";
  String portrait = "Turn your phone";
  String displayOritentation = ( width >= height) ? landscape : portrait;
  if ( displayOritentation==portrait ) println (displayOritentation);
  if ( displayOritentation==landscape )appWidth = width; //option displayWidth
  if ( displayOritentation==landscape )appHeight = height; //option displayHeight
  //println (appWidth, appHeight);
  //
  //Population
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  quitButtonX = centerX-appWidth*0.25;
  quitButtonY = centerY-appHeight*0.25;
  quitButtonWidth = appWidth*0.5;
  quitButtonHeight = appHeight*0.5;
}//End setup
//
void draw() 
{
  //DisplayOritentation Finishing Code
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {//Hover Over Effect
    buttonColour= red;
  } else {
    buttonColour= white;
  }//End Hover Over Effect
  //
  //Alternate verification that mouseX&Y is on the button
  println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite); //Not night mode compatible, must change
}//End draw
//
void keyPressed() 
{
  //Quit KeyBoard Button
  if (key=='Q' || key=='q') exit(); //Key Board is separated on key-variables: key& keycode
}//End keyPressed
//
void mousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//
//End Main Program
