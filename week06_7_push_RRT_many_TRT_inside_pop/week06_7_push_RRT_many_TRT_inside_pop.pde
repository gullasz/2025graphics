//week06_7_push_RRT_many_TRT_inside_pop
//慢慢組出機器手臂
void setup(){
  size(500,800,P3D);//step00視窗放大，看比較完整
}
void draw(){
  background(255);  
  translate(width/2,height/2);
  sphere(10);//中心
  fill(252,131,77);
  pushMatrix();
    if(mousePressed && mouseButton==RIGHT) rotateY(radians(frameCount));//step03右鍵旋轉
    if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount));//step02右鍵旋轉
    translate(x,y);//step01要往上抬升0,100到中心 0,100
    box(50,200,25);//手臂  
    pushMatrix();
      translate(0,-100);//step00掛到手臂上
      //if(mousePressed) //step00刪掉if(mousePressed),讓他一直轉
      rotateZ(radians(frameCount));
      translate(100,0);
      box(200,50,25);//手肘
      pushMatrix();
        translate(100,0);
        rotateZ(radians(frameCount));
        translate(25,0,0);
        box(50,25,50);//小手腕
      popMatrix();
    popMatrix();
  popMatrix();//step04 pop
}
float x=0,y=0;//會動的位置
void mouseDragged()
{
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);
}
