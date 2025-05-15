//week13_2_camera_movie_eye_center_up
//繪圖時會設定camera相關係數
import processing.video.*;//影片外掛匯入
Movie movie;
void setup()
{
  size(720, 480, P3D);//影片解析度 720*480
  movie = new Movie(this, "street.mov");
  movie.loop();
}
void draw()
{
  background(127);
  //eyeX,eyeY,eyeZ,centerX,centerY,centerZ,upX,upY,upZ
  camera(mouseX, mouseY, 500, 360, 240, 0, 0, 1, 0);
  //把影片中心當主角
  if (movie.available())movie.read();
  image(movie, 0, 0);
}
