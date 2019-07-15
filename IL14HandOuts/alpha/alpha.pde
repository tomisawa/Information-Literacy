int cnt = 0 ;
PImage img1,img2;

void setup(){
  size(400,200);
  background(255);
  frameRate(1);
  img1=loadImage("alpha1.jpg");
  img2=loadImage("alpha2.jpg");
}

void draw(){
  if (cnt==0) {
    image(img1, 0, 0);
  }
  if (cnt==1) {
    image(img2, 0, 0);
  }
  cnt=(cnt+1)%2;
}