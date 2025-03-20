//week05_5_rotate_radians_frameCount_translate_mouseX_mouseY
//比較rotate 與 translate的順序
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  //把下面兩行移動順序
  //會發現 兩行順序不同 一個自轉，一個公轉
  //在電腦圖學裡，畫圖時會照著 之前累積的移動旋轉來放東西
  rotate(radians(frameCount)*10);//1秒有60frame，轉60度，要變radians單位
  translate(mouseX,mouseY);//移到滑鼠所在位置
  rect(-50,-5,100,10);//寬度100的棒子，但放在左上角
}
