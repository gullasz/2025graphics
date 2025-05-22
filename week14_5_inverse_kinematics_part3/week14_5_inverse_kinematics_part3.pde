//week14_5_inverse_kinematics_part3
void setup()
{
  size(400,400);
  for(int i=0;i<2;i++)//從下到上擺好
  {
    p[i] = new PVector(200,350-50*i);
  }
}
PVector [] p = new PVector[6];//6個頂點
void draw()
{
  background(255);
  for(int i=0;i<2;i++)
  {
    if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);//紅字
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);//黑字
    text("p:"+i,p[i].x+10,p[i].y);//字往右一點點
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠也有一個點，控制座標移動
  line(p[0].x,p[0].y,mouseX,mouseY);
}
