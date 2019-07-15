int cnt=0,R=80;
PImage img1,img2;

void setup() {
  size(600, 300);
  background(0);
  noStroke();
  fill(255);

  background(0);
  ellipse(width/4, height/2, R, R);
  save("beta1.jpg");
  img1=loadImage("beta1.jpg");

  background(0);
  ellipse(width/4*3, height/2, R, R);
  save("beta2.jpg");  
  img2=loadImage("beta2.jpg");

  frameRate(6);
}

void draw() {
  if (cnt==0) {
    image(img1, 0, 0);
  }
  if (cnt==1) {
    image(img2, 0, 0);
  }
  cnt=(cnt+1)%2;
}