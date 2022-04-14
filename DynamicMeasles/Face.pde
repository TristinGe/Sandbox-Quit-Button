//Global Variables
int appWidth, appHeight;
int smallerGeometryDimension, reset;
float rectFacex, rectFacey, rectFacewidth, rectFaceheight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, EyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
//
void face() 
{  
  //Left Eye
  //rect();
  ellipse(leftEyeX, leftEyeY, EyeDiameter, EyeDiameter);
  //
  //Right Eye
  //rect();
  ellipse(rightEyeX, rightEyeY, EyeDiameter, EyeDiameter);
  //
  //Nose
  //rect();
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  //
  //Mouth
  //rect();
  //int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  //int mouthHeight = int ( mouthOpen );
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen);
  line( mouthX1, mouthY1, mouthX2, mouthY2 ); //Notice the END CAPS
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight);
}//End face
