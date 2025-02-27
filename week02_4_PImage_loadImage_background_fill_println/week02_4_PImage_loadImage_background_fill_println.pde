//week02_4_PImage_loadImage_background_fill_println
//要描圖
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.png");
}//記得把圖檔拉入程式中
void draw(){
   background(img);
   fill(255,mouseX);//半透明的白色,alpha值為128
   println(mouseX);//在小黑印出mouseX值
   rect(0,0,400,400);
}
