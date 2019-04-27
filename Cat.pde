// open the cats folder
// all images named as numbers 1 - 5
// load image based on randomly passed value

String[] catsFolder = new String[]{"cats/1.jpg"};


class Cat extends Drop{

  PImage img;
  Drop d;
  
  Cat(int randomNo){
    img = loadImage(catsFolder[randomNo]);  
    d = new Drop(img);
  }
  
  void rain(){
    d.fall();
    d.show();
  }  
  
}


class Cats{

  ArrayList<Cat> catArray;
  
  Cats(int max){
    catArray = new ArrayList<Cat>(); 
    
    for (int i=0; i<max; i++){
        int randomCatNumber = getRandomNumber(0, catsFolder.length-1);
        Cat c = new Cat(randomCatNumber);
        catArray.add(c);
    }
  }
  
  ArrayList<Cat> cloud(){
    return catArray;
  }

}
