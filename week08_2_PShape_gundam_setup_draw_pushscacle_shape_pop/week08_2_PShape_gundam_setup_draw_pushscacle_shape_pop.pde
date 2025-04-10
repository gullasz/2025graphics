//week08_2_PShape_gundam_setup_draw_pushscacle_shape_pop
//轉動他,要改成互動模式的程式風格
PShape gundam;
void setup()
{
  size(400,400,P3D);
  gundam=loadShape("Gundam.obj");
}
void draw()
{
  background(128);
  translate(width/2,height/2+100);
  pushMatrix();
    scale(10,-10,10);
    rotateY(radians(frameCount));
    shape(gundam,0,0);
  popMatrix();
  pushMatrix();
    translate(100,0,0);
    scale(10,-10,10);
    shape(gundam,0,0);
  popMatrix();
}
