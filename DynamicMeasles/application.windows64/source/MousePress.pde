void Mouse()
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight && mouseButton == LEFT) exit();
  //
  if (mouseX>quitButtonX1 && mouseX<quitButtonX1+quitButtonWidth1 && mouseY>quitButtonY1 && mouseY<quitButtonY1+quitButtonHeight1 && mouseButton == LEFT) 
  { reset();}
  //
  if (mouseX>quitButtonX2 && mouseX<quitButtonX2+quitButtonWidth2 && mouseY>quitButtonY2 && mouseY<quitButtonY2+quitButtonHeight2 &&  mouseButton == LEFT &&!isLooping())
  { loop();} else {noLoop();}
}//End Mouse
