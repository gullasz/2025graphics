//week03_12_3D_pushMatrix_translate_sphere_popMatrix
void setup()
{
  size(600,400,P3D);
}
void draw()
{
  background(128);//灰色背景
  lights();//加上打光
  pushMatrix();//備份矩陣
    translate(300,100);//習慣上要縮排
    sphere(100);
  popMatrix();//還原矩陣
  //備份、還原後就不會出錯
  pushMatrix();
    translate(100,100);
    sphere(100);
  popMatrix();
}
