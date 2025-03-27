//week06_1_ellipse_translate_push_rotateZ_box_pop
void setup(){
  size(500,500,P3D);
}
void draw()
{
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//把東西放到中心
  pushMatrix();//Matrix保護
  //按下mouse才轉動
    if(mousePressed) rotateZ(radians(frameCount));//對著下面中心旋轉
    box(100,30,30);//橫的棒子
  popMatrix();//Matrix保護
}
