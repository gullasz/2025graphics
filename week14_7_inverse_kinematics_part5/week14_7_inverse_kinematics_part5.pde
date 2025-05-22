//week14_7_inverse_kinematics_part5
void setup()
{
  size(400,400);
  for(int i=0;i<6;i++)//從下到上擺好
  {
    p[i] = new PVector(200,350-50*i);
  }
}
PVector [] p = new PVector[6];//6個頂點
void draw()
{
  background(255);
  for(int i=0;i<6;i++)
  {
    if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);//紅字
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);//黑字
    text("p:"+i,p[i].x+10,p[i].y);//字往右一點點
  }
  PVector now = new PVector(mouseX,mouseY);//現在的位置
  PVector v = PVector.sub(now,p[4]).normalize().mult(50);//短向量
  //因為長度限制為50所以長向量長度先變1 再乘以50
  p[5].x=p[4].x+v.x;//新的位置,中心,再加上長度50的這小段
  p[5].y=p[4].y+v.y;//新的位置,中心,再加上長度50的這小段
  ellipse(mouseX,mouseY,6,6);//滑鼠也有一個點，控制座標移動
  line(p[4].x,p[4].y,mouseX,mouseY);
}
