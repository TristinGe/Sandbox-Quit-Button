//Global Variables
int appWidth, appHeight;
//
void setup() 
{ 
  size(400, 300); //fullScreen(), displayWidth, displayHeight
  display ();
  population ();
}//End setup
//
void draw() 
{
  quitbutton() ;
}//End draw
//
void keyPressed() 
{
  //Quit KeyBoard Button
  if (key=='Q' || key=='q') exit(); //Key Board is separated on key-variables: key& keycode
}//End keyPressed
//
void mousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight && mouseButton == LEFT) exit();
}//End mousePressed
//
//End Main Program
