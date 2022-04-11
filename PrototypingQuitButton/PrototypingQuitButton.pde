//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() 
{ 
  size(400,300); //fullScreen(), displayWidth, displayHeight
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
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
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
