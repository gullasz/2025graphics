//week13_3_texture_textureMode_beginShape_vertex_endShape
//把貼圖跟camera整合再一起
PImage img;  
void setup()
{
  size(400, 400, P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
}
//1.用最簡單的NORMAL畫 2個三角形 不像3D透視效果
void draw()
{
  background(128);
  beginShape();
  texture(img);
  vertex(40, 80, 0, 0);//4個頂點
  vertex(320, 20, 1, 0);
  vertex(380, 360, 1, 1);
  vertex(160, 380, 0, 1);
  endShape();
}
