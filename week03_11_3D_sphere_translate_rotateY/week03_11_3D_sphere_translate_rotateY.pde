//week03_11_3D_sphere_translate_rotateY
void setup()
{
  size(400,400,P3D);
}
void draw()
{
  background(128);//灰色背景
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));//對Y旋轉
  sphere(200);
}
