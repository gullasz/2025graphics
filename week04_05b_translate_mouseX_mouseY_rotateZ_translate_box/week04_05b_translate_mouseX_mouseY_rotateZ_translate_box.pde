//week04_05b_translate_mouseX_mouseY_rotateZ_translate_box
void setup()
{
  size(400,400,P3D);
}
void draw()
{
  background(128);
  //translate(width/2,height/2);
  translate(mouseX,mouseY);
  rotateZ(radians(frameCount));//對z軸旋轉
  translate(0,-50);//把下端移到中心
  box(10,100,10);//可轉動的長條
}
