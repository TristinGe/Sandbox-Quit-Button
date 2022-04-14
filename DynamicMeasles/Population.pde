void population()
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
  rectFacex =  appWidth*0.5 - smallerGeometryDimension*0.5;
  rectFacey = appHeight*0;
  rectFacewidth = smallerGeometryDimension;
  rectFaceheight = smallerGeometryDimension;
  faceX = appWidth*0.5;
  faceY = appHeight*0.5;
  faceDiameter = smallerGeometryDimension;
  leftEyeX = appWidth*0.5 - smallerGeometryDimension*1/4.9;
  leftEyeY = appHeight*0.5 - smallerGeometryDimension*0.25;
  rightEyeX = appWidth*0.5 + smallerGeometryDimension*1/4.9;
  rightEyeY = leftEyeY;
  EyeDiameter = smallerGeometryDimension*0.25;
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
