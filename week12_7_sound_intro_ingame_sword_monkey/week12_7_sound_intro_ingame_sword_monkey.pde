//week12_7_sound_intro ingame_sword_monkey
import processing.sound.*;
SoundFile sndInGame,sndIntro,sndMonkey,sndSword;
void setup() {
  size(400,400);
  sndInGame = new SoundFile(this,"In Game Music.mp3");
  sndIntro = new SoundFile(this,"Intro Song_Final.mp3");
  sndMonkey = new SoundFile(this,"Monkey 1.mp3");
  sndSword = new SoundFile(this,"sword slash.mp3");
  sndIntro.play();
}
boolean playingIntro=true;
void keyPressed()
{
  //按下空格
  if(playingIntro)//正在播開場簡介
  {
    sndIntro.stop();//開場簡介音樂停止
    sndInGame.play();//遊戲關卡音樂播放
    playingIntro=false;//沒在播開場簡介
  }
  else//沒在播開場簡介
  {
    sndInGame.stop();
    sndIntro.play();
    playingIntro=true;
  }

    
}
void mousePressed()
{
  if(mouseButton==LEFT)sndSword.play();
  if(mouseButton==RIGHT)sndMonkey.play();
}
void draw()
{

}
