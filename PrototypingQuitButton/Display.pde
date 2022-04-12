void display ()
{
  //Landscape, not portrait or square
  String landscape = "You are good to go!";
  String portrait = "Turn your phone";
  String displayOritentation = ( width >= height) ? landscape : portrait;
  if ( displayOritentation==portrait ) println (displayOritentation);
  if ( displayOritentation==landscape )appWidth = width; //option displayWidth
  if ( displayOritentation==landscape )appHeight = height; //option displayHeight
  //println (appWidth, appHeight);
  //
}//End display
