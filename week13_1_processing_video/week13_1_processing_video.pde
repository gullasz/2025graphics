//week13_1_processing_video
//Sketch - Libarary - Manage Libararies
import processing.video.*;//Jave 使用外掛的匯入
//有視訊鏡頭
Capture video;
Movie movie;//沒鏡頭改用這個
void setup()
{
  size(640,960);
  video = new Capture(this,640,480);
  video.start();//打開視訊
  movie = new Movie(this,"street.mov");
  movie.loop();
}
void draw()
{
  if(video.available())video.read();
  image(video,0,480);
  
  if(movie.available())movie.read();
  image(movie,0,0);
  
}
