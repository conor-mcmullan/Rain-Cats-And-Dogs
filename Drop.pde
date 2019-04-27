class Drop{

  float x = random(width);
  float y = 0;
  float yspeed = random(1, 5);
  PImage img;
  
  
  Drop(PImage cat){
    img = cat;
  }
  
  Drop(){
  }
  
  void fall(){
   y = y + yspeed;
  }
  
  void show(){
    if (y <= height){
      stroke(138, 43, 226);
      image(img, x, y+10);
    }
  }

}
