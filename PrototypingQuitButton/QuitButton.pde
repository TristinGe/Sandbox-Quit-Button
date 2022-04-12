//Global Variables
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color red=#C42B1C, white=#FFFFFF, buttonColour, resetWhite=#FFFFFF;//Notice Nightmode blue values
//
void quitbutton() 
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
}//End quitbutton
