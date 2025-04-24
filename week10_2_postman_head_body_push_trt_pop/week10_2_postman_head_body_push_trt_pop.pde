//week10_2_postman_head_body_push_trt_pop
PImage postman,head,body;
void setup()
{
  size(500,500);
  postman = loadImage("postman.png");
  head  = loadImage("head.png");
  body  = loadImage("body.png");
}
void draw()
{
  background(#FFFFF2);
  image(postman,0,0);
  fill(255,0,255,128);
  rect(0,0,600,600);
  pushMatrix();
    translate(235,230);
    rotate(radians(mouseX));
    translate(-235,-230);
    println(mouseX,mouseY);
    image(head,0,0);
  popMatrix();
  image(body,0,0);
}
