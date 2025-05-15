//13_5_camera)ekyPressed_ceyCode_x_y_z_angle_cos_sin
//利用方向鍵移動主角
//修改自week13_4_camera_chessboard_texturefront_left
PImage img;
void setup()
{
  size(400, 400, P3D);
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
}
float x=200, y=200, z=200, angle=180;
void keyPressed()
{
  if(keyCode==LEFT) angle--;
  if(keyCode==RIGHT) angle++;
  if(keyCode==UP)
  {
    x+=cos(radians(angle));
    z+=sin(radians(angle));
  }
  if(keyCode==DOWN)
   {
    x-=cos(radians(angle));
    z-=sin(radians(angle));
  }
}
void draw()//攝影機往前方看，左右、前後移動
{
  if(keyPressed)keyPressed();//按下後會持續更新
  camera(x,y, z,x+cos(radians(angle)), y, z+sin(radians(angle)), 0, 1, 0);
  background(128);
  beginShape();//正前方
  texture(img);
  vertex(0, 0, 0, 0, 0);//x,y,z, u,v
  vertex(400, 0, 0, 1, 0);
  vertex(400, 400, 0, 1, 1);
  vertex(0, 400, 0, 0, 1);
  endShape();
  beginShape();//左方
  texture(img);
  vertex(0, 0, 0, 0, 0);//x,y,z, u,v
  vertex(0, 400, 0, 1, 0);
  vertex(0, 400, 400, 1, 1);
  vertex(0, 0, 400, 0, 1);
  endShape();
}
