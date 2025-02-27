//week02_7_keyPressed_if_key_s_for_for_println_vertex_beginShape
ArrayList<Integer> x,y;//先有兩個還沒準備好的資料結構,等mousePressed再新增準備
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();//大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.png");
}//記得把圖檔拉入程式中
void draw(){
  background(img);
  fill(255,200);//半透明的白色,alpha值為128
  rect(0,0,400,400);
  //上面是week02_4,下面用迴圈從資料結構取出來
    for(int I=1;I<xx.size();I++)//I對應大的資料結構
  {
    ArrayList<Integer> x = xx.get(I);//取出小的資料結構
    ArrayList<Integer> y = yy.get(I);
    for(int i=1;i<x.size();i++)//小的,再照舊畫
    {
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
}
void keyPressed(){
  if(key=='s' || key=='S'){
    for(int I=1;I<xx.size();I++)//I對應大的資料結構
    {
      ArrayList<Integer> x = xx.get(I);//取出小的資料結構
      ArrayList<Integer> y = yy.get(I);
      println("beginShape();");
      for(int i=1;i<x.size();i++)//小的,再照舊畫
      {
        println("  vertex(" +x.get(i)+ "," +y.get(i)+ ");");
      }//改在keyPressed()按下s或S時全部印
      println("endShape();");
    }
  }
}
void mouseDragged()
{
  //println("vertex(mouseX,mouseY)");
  //println("vertex(" + mouseX + "," + mouseY + ");");不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed()//滑鼠按下時,建新的資料結構
{
  x = new ArrayList<Integer>();xx.add(x);
  y = new ArrayList<Integer>();yy.add(y);
}
