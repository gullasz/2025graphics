//week08_4_gundam_body_head
//慢慢把切割開的逐一組合起來
PShape body,head;
void setup()
{
  size(400,400,P3D);
  body = loadShape("body.obj");//拉入body.obj body,mtl Diffuse.jpg AO.jpg
  head = loadShape("head.obj");//頭 head.obj head.mtl
}

void draw()
{
  background(255);
  translate(width/2,height/2+100);
  sphere(10);//基準點
  scale(10,-10,10);
  pushMatrix();
    translate(0,22.5);//3掛回原來的地方
    rotate(radians(x));//2轉動
    //translate(x/10,y/10);//放在x,y的座標
    //println(x/10,y/10);//印出座標，等等要取上面的數
    translate(0,-22.5);//1頭的中心放在旋轉中心
    shape(head,0,0);
  popMatrix();
  shape(body,0,0);
}
float x=0,y=0;
void mouseDragged()
{
 x+=mouseX-pmouseX;
 y-=mouseY-pmouseY;
}
