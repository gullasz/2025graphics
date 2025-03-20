//week05_3_atan2_dy_dx_text_radians_degrees
//degrees vs. radians 結合 week04_01 和 week05_2
void setup(){
  size(400,400);
}
void draw(){
  background(128);
  line(200,200,400,200);
  line(200,200,mouseX,mouseY);
  float dx = mouseX-200,dy=mouseY-200;
  float a =atan2(dy,dx);//神奇的三角函式可以找到arc弧的radians
  //atan2()出來的職，介於-PI~PI中間
  arc(200,200,200,200,0,a,PIE);//把算出來的arc radians 拿來用
  textSize(30);
  text("radians: "+a,100,100); //弧度/弳度
  text("degrees: "+degrees(a),100,130); //度
}
