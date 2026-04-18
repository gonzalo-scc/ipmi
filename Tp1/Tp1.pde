PImage Piramide;

void setup(){
  size(800, 400);
 Piramide = loadImage("piramide.jpg");
}

void draw(){
  background(220);

  
  image(Piramide, 0, 0, 400, 400);

 
  noStroke();

  fill(180, 220, 255); 
  rect(400, 0, 400, 200);

  fill(180); 
  rect(400, 200, 400, 200);

  
  fill(230, 200, 120);
  triangle(500, 300, 750, 300, 625, 100);

  fill(200, 170, 100);
  triangle(500, 300, 625, 100, 625, 300);

  fill(255, 220, 140);
  triangle(750, 300, 625, 100, 625, 300);

  
  stroke(120);

  line(520, 300, 625, 100);
  line(560, 300, 625, 100);
  line(600, 300, 625, 100);
  line(640, 300, 625, 100);
  line(680, 300, 625, 100);
  line(720, 300, 625, 100);

  line(540, 260, 701, 260);
  line(551, 240, 690, 240);
  line(561, 220, 683, 220);
  line(573, 200, 672, 200);

 
  noStroke();
  fill(150);
  rect(480, 300, 300, 10);

  
  fill(0);
  textSize(16);
  text(mouseX + " / " + mouseY, mouseX + 10, mouseY - 10);

 
  println(mouseX + " / " + mouseY);
  println(frameRate);
  println(frameCount);
}
