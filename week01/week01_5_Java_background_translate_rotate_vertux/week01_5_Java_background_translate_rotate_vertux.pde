// week01_5_Java_background_translate_rotate_vertux
void setup(){
  size(400,400,P3D); //設定好全部的OpenGL
}
float angles=0;
void draw(){
  background(0);//背景清掉才能畫新的內容
  translate(200,200);//往200,200移動
  rotate(angles);//在座標0,0轉動
  angles+=0.01;
  beginShape(TRIANGLES); //開始畫三角形
  fill(255,0,0);vertex(0,100*2);
  fill(0,255,0);vertex(87*2,-50*2);
  fill(0,0,255);vertex(-87*2,-50*2);
  endShape();
}
