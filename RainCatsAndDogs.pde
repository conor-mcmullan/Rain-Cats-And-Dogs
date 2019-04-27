
int maxCats;
int maxDogs;

Cats cats;
ArrayList<Cat> catCloud;

Dogs dogs;
ArrayList<Dog> dogCloud;

int getRandomNumber(int min, int max){
  return int(random(min, max));
}

void setup(){
  fullScreen();
  //size(400, 400);
  
  maxCats = getRandomNumber(1, 5);
  maxDogs = getRandomNumber(1, 5);  
  
  cats = new Cats(maxCats);
  catCloud = cats.cloud();
  
  dogs = new Dogs(maxDogs);
  dogCloud = dogs.cloud();
 
}

void draw(){
  background(230, 230, 250);
  for (Cat c: catCloud){
    c.rain();
  }
  
  for (Dog d: dogCloud){
    d.rain();
  }
  
}
