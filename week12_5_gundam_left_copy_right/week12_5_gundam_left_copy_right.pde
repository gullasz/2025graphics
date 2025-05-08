// week12_5_gundam_left_copy_right
// 修改自 week12_4_gundam_head_body_push_trt_pop_again
PShape body, head,uparm1, upuparm1, hand1,uparm2, upuparm2, hand2;
void setup() {
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
  uparm2 = loadShape("uparm2.obj"); // week12_5
  upuparm2 = loadShape("upuparm2.obj"); // week12_5
  hand2 = loadShape("hand2.obj"); // week12_5
}
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0; // 0:頭, 1:上上手臂, 2:上手臂 3: 手
void mouseDragged(){
  angleX[ID] += radians(mouseX - pmouseX); // 左右拖曳
  angleY[ID] += radians(mouseY - pmouseY); // 上下拖曳
}
void keyPressed(){
  if(key=='1') ID = 1;
  if(key=='2') ID = 2;
  if(key=='3') ID = 3; 
  if(key=='4') ID = 4;
  if(key=='5') ID = 5;
  if(key=='6') ID = 6;
  if(key=='7') ID = 7;
  if(key=='8') ID = 8;
  if(key=='9') ID = 9;
  if(key=='0') ID = 0; 
}
void draw() {
  background(204);
  translate(200, 300);
  sphere(10); // 原點的球

  scale(10, -10, 10);
  
  shape(body, 0, 0);
  pushMatrix();
    translate(0, 22.5);
    rotateY(angleX[0]); // week12_2 x方向 左右拖曳, 是對Y軸轉
    rotateX(angleY[0]); // week12_2 y方向 上下拖曳, 是對X軸轉
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();
  
  pushMatrix(); // 左邊的手臂系列
    translate(-2.9, 20.8);
    rotateY(angleX[1]);
    rotateX(angleY[1]);
    translate(2.9, -20.8); // 把剛剛印出來的數值, 拿來用
    shape(upuparm1, 0, 0); // 上上手臂
    pushMatrix();
      translate(-4.1, 19.9); // 再掛回去原本的位置
      rotateZ(angleY[2]); // week12_2 y方向 上下拖曳, 是對Z軸轉
      rotateY(angleX[2]); // week12_2 x方向 上下拖曳, 是對Y軸轉
      translate(4.1, -19.9); // 把物體的旋轉中心, 放到座標中心
      shape(uparm1, 0, 0); // 上手臂
      pushMatrix();
        translate(-4.5, +16.9);
        rotateX(angleY[3]); // week12_2 y方向 上下拖曳, 是對X軸轉
        rotateY(angleX[3]); // week12_2 x方向 上下拖曳, 是對Y軸轉
        translate(4.5, -16.9); // 剛剛把手移到座標中心的移動量
        shape(hand1, 0, 0);
      popMatrix();
    popMatrix();
  popMatrix();

  
  pushMatrix(); // 右邊的手臂系列
    translate(+2.9, 20.8);
    rotateY(angleX[4]);
    rotateX(angleY[4]);
    translate(-2.9, -20.8); // 把剛剛印出來的數值, 拿來用
    shape(upuparm2, 0, 0); // 上上手臂
    pushMatrix();
      translate(+4.1, 19.9); // 再掛回去原本的位置
      rotateZ(angleY[5]); // week12_2 y方向 上下拖曳, 是對Z軸轉
      rotateY(angleX[5]); // week12_2 x方向 上下拖曳, 是對Y軸轉
      translate(-4.1, -19.9); // 把物體的旋轉中心, 放到座標中心
      shape(uparm2, 0, 0); // 上手臂
      pushMatrix();
        translate(+4.5, +16.9);
        rotateX(angleY[6]); // week12_2 y方向 上下拖曳, 是對X軸轉
        rotateY(angleX[6]); // week12_2 x方向 上下拖曳, 是對Y軸轉
        translate(-4.5, -16.9); // 剛剛把手移到座標中心的移動量
        shape(hand2, 0, 0);
      popMatrix();
    popMatrix();
  popMatrix();
}
