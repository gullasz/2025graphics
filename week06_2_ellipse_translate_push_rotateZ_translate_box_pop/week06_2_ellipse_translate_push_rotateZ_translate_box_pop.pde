//week06_2_ellipse_translate_push_rotateZ_translate_box_pop
//再加一個移動，把物體放到轉盤中心
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
    translate(-50,0,0);//把棒子往左移一段，讓右端在最中心
    box(100,30,30);//橫的棒子
  popMatrix();//Matrix保護
}
