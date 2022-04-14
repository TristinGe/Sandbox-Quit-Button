//Global Variables
void setup() 
{
  //Display Geoemtry
  size(600, 400); //fullScreen(); displayWidth, displayHeight
  population();

}//End setup
//
void draw() 
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
void keyPressed() 
{
}//End keyPressed
//
void mousePressed() 
{
  Mouse();
}//End mousePressed
//
//End Main Program
