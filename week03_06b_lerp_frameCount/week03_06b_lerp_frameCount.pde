//week03_06b_lerp_frameCount
void setup()
{
  size(400,400);
}
float startX=10,startY=10;
float stopX=390,stopY=290;
void draw()
{
  background(255);//清除殘影
  ellipse(startX,startY,10,10);
  ellipse(stopX,stopY,10,10);
  //lerp()可以做內差,要給他0.0~1.0之間的數
  float midX = lerp(startX,stopX,frameCount/200.0);
  float midY = lerp(startY,stopY,frameCount/200.0);
  //frameCount是第幾個frame 1秒=60frame
  ellipse(midX,midY,10,10);
}
