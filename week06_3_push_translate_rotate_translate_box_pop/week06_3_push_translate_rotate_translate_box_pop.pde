//week06_3_push_translate_rotate_translate_box_pop
void setup(){
  size(500,500,P3D);
}
void draw()
{
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//把東西放到中心
  pushMatrix();//Matrix保護
    translate(x,y);
    if(mousePressed && mouseButton==RIGHT)
    {
      rotateZ(radians(frameCount));//對著下面中心旋轉
    }
    translate(-50,0,0);//把棒子往左移一段，讓右端在最中心
    box(100,30,30);//橫的棒子
  popMatrix();//Matrix保護
}
float x=0,y=0;
void mouseDragged()
{
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  
}
