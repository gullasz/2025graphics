//week05_7_many_pushMatrix_popMatrix
void setup(){
  size(500,500);
}
void draw(){
  background(204);
  for(int x=50;x<500;x+=100)//每個距離100
  {
    for(int y=50;y<500;y+=100)//每個距離100
    {
      pushMatrix();//主角(在圖學裡要往右縮排)
        translate(x,y);//移到對應的x、y座標
        rotate(radians(frameCount));//旋轉
        rect(-50,-5,100,10);//長度100的長條
      popMatrix();//主角
    }
  }
}
