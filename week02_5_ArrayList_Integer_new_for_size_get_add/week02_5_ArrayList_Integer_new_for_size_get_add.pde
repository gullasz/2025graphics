//week02_5_ArrayList_Integer_new_for_size_get_add
//利用資料結構,把歷史軌跡記起來
ArrayList<Integer> x = new ArrayList<Integer>();//新建資料結構
ArrayList<Integer> y = new ArrayList<Integer>();
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
  for(int i=1;i<x.size();i++)
  {
    line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged()
{
  x.add(mouseX);
  y.add(mouseY);
}//線會全部連在一起
