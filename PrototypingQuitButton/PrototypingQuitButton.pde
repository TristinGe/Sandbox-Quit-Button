//Global Variables
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
void setup() 
{ 
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
