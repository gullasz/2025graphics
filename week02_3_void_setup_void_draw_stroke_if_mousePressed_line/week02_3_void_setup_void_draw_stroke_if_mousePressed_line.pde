//week02_3_void_setup_void_draw_stroke_if_mousePressed_line
void setup(){//一開始設定一次
  size(400,400);
  background(255);
  fill(238);
  noStroke();
  float s = 400/14;//計算格子大小
  for(int i=0;i<14;i++){//對應y座標
    for(int j=0;j<14;j++){//對應x座標
      //rect(0,i*s*2,s,s);//試位置
      if((i+j)%2==0) rect(j*s,i*s,s,s);
    }
  }
}
void draw(){//每秒畫60次
stroke(0,100,200);//設定顏色
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}//如果mouse按下,就畫線,給兩個座標:現在、之前的mouse
