// week01_4_Java_OpenGL_setup_draw_rotate
void setup(){
  size(400,400,P3D); //設定好全部的OpenGL
}
float angles=0;
void draw(){
  rotate(angles);
  angles+=0.01;
  beginShape(TRIANGLES); //開始畫三角形
  fill(255,0,0);vertex(0,200);
  fill(0,255,0);vertex(400,0);
  fill(0,0,255);vertex(400,400);
  endShape();
}
