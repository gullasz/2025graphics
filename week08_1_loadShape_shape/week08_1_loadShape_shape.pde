//week08_1_loadShape_shape
size(400,400,P3D);//(3)要有P3D的OpenGL 3D功能
PShape gundam=loadShape("Gundam.obj");//(1)讀入3D模型  loadshape("檔名")
translate(width/2,height/2);
pushMatrix();
  translate(0,100);//(5)再往下移一點點,比較好看
  scale(10,-10,10);//(4)把模型法大shape(10)上下要倒過來
  shape(gundam,0,0);//(2)劃出3D模型
 popMatrix();
