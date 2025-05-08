//week12_6_sound
//要有聲音,需要聲音的Libarary 函式庫
//Sketch-Libarary-Managed Libraries 找sound
//會看到 Sound | provides a simple way to work with audio
//選他按install
//安裝好 File-Example 點開Libararies核心函式庫Sound
//Soundfile那堆範例 看SimplePlatback
import processing.sound.*;
SoundFile mySound;
void setup() {
  size(400,400);
  mySound = new SoundFile(this,"music.mp3");
  mySound.play();
}
void draw()
{

}
