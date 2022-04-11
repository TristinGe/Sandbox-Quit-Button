//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FFFF00, purple=#FF00FF, buttonColour, resetWhite=#FFFFFF;//Notice Nightmode blue values
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
    buttonColour= yellow;
  } else {
    buttonColour= purple;
  }//End Hover Over Effect
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
void mousePressed() 
{
}//End mousePressed
//
//End Main Program
