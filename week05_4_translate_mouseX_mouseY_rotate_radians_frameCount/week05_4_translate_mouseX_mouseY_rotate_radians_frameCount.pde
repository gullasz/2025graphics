//week05_4_translate_mouseX_mouseY_rotate_radians_frameCount
//比較rotate 與 translate的順序
void setup(){
  size(400,400);
}
void draw(){
  background(204);
  //把下面兩行移動順序
  //會發現 畫東西之前的translate() 才有效果
  //在電腦圖學裡，畫圖時會照著 之前累積的移動旋轉來放東西
  translate(mouseX,mouseY);//移到滑鼠所在位置
  rotate(radians(frameCount));//1秒有60frame，轉60度，要變radians單位
  rect(-50,-5,100,10);//寬度100的棒子，但放在左上角
}
