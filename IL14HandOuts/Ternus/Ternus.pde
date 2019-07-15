int cnt=0,R=80;
PImage img1,img2,img3;

void setup() {
  size(600, 300);
  background(255);
  noStroke();
  fill(0);

 save("beta3.jpg");
 img3=loadImage("beta3.jpg");
  
  background(255);
  ellipse(width/4, height/2, R, R);
  ellipse(width/4*2, height/2, R, R);
  save("beta1.jpg");
  img1=loadImage("beta1.jpg");

  background(255);
  ellipse(width/4*2, height/2, R, R);
  ellipse(width/4*3, height/2, R, R);
  save("beta2.jpg");  
  img2=loadImage("beta2.jpg");

  frameRate(10);
}

void draw() {
  if (cnt==0) {
    image(img1, 0, 0);
  }
  if (cnt==1) {
    image(img3, 0, 0);
  }
  if (cnt==2) {
    image(img2, 0, 0);
  }
  if (cnt==3) {
    image(img3, 0, 0);
  }
  cnt=(cnt+1)%4;
}