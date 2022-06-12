PImage img;  // Declare variable "a" of type PImage
IntList black_xs = new IntList();
IntList black_ys = new IntList();



void setup() {
  size(1440, 900);

  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img = loadImage("/Users/yuli/Downloads/guess_who/1.png");  // Load the image into the program  
  img = loadImage("/Users/yuli/Downloads/guess_who/"+(23)+".png");
  image(img, 0, 0, 1440, 900);
  int random = int(random(20)) + 1;
  img = loadImage("/Users/yuli/Downloads/guess_who/"+(random)+".png");
  image(img, 185, 325, 350, 375);
}

void draw() {
  // Displays the image at its actual size at point (0,0)
//  image(img, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 5; j++) {
      img = loadImage("/Users/yuli/Downloads/guess_who/"+(i*5+j+1)+".png");
      image(img, 720+j*144, 0+i*200, 144, 200);
  }
  }
  img = loadImage("/Users/yuli/Downloads/guess_who/22.png");
  image(img, 0, 0, 720, 200);
  

  for (int i = 0; i < black_xs.size(); i++) {
    img = loadImage("/Users/yuli/Downloads/guess_who/black.png");
    image(img, black_xs.get(i), black_ys.get(i), 144, 200);
  }
  
  
}

void mouseClicked() {
  if (mouseX >= 720) {
    int black_x = mouseX / 144;
    black_x = black_x * 144;
    int black_y = mouseY / 200;
    black_y = black_y * 200;
    
    if ((black_xs.hasValue(black_x) == true) && (black_ys.hasValue(black_y) == true)) {
      for (int i = 0; i < black_xs.size(); i++) {
        if ((black_xs.get(i) == black_x) && (black_ys.get(i) == black_y)) {
          black_xs.remove(i);
          black_ys.remove(i);
        }
      }
    } else {
      black_xs.append(black_x);
      black_ys.append(black_y);
    }
    
  
    
    
  }

  

}
