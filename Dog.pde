// open the cats folder
// all images named as numbers 1 - 5
// load image based on randomly passed value

String[] dogsFolder = new String[]{"dogs/1.jpg"};


class Dog extends Drop{

  PImage img;
  Drop d;
  
  Dog(int randomNo){
    img = loadImage(dogsFolder[randomNo]);  
    d = new Drop(img);
  }
  
  void rain(){
    d.fall();
    d.show();
  }  
  
}


class Dogs{

  ArrayList<Dog> dogArray;
  
  Dogs(int max){
    dogArray = new ArrayList<Dog>(); 
    
    for (int i=0; i<max; i++){
        int randomDogNumber = getRandomNumber(0, dogsFolder.length-1);
        Dog d = new Dog(randomDogNumber);
        dogArray.add(d);
    }
  }
  
  ArrayList<Dog> cloud(){
    return dogArray;
  }

}
