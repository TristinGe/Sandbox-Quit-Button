//Global Variables
color black=#000000;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float quitButtonX1, quitButtonY1, quitButtonWidth1, quitButtonHeight1;
float quitButtonX2, quitButtonY2, quitButtonWidth2, quitButtonHeight2;
color red=#C42B1C, white=#FFFFFF, buttonColour, resetWhite=#FFFFFF, buttonColour1, buttonColour2, green=#75D557, yellow=#FAE314;
//
void button() 
{
  PFont titleFont;
  String cancel = "X", restart="Refresh", Loop="stop/start";
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  quitButtonX = centerX-appWidth*0.5;
  quitButtonY = centerY-appHeight*0.5;
  quitButtonWidth = appWidth*0.15;
  quitButtonHeight = appHeight*0.15;
  //
  quitButtonX1 = centerX-appWidth*0.5;
  quitButtonY1 = centerY-appHeight*0.075;
  quitButtonWidth1 = appWidth*0.15;
  quitButtonHeight1 = appHeight*0.15;
  //
  quitButtonX2 = centerX-appWidth*0.5;
  quitButtonY2 = centerY+appHeight*0.345;
  quitButtonWidth2 = appWidth*0.15;
  quitButtonHeight2 = appHeight*0.15;
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
