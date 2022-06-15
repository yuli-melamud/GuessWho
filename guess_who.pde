//creates two lists of x's and y's to store black squares
PImage img; 
IntList black_xs = new IntList();
IntList black_ys = new IntList();



void setup() {
  size(1440, 900);

  img = loadImage("images/"+(23)+".png");
  image(img, 0, 0, 1440, 900); //background picture
  int random = int(random(20)) + 1;//pick random picture to be guessed
  img = loadImage("images/"+(random)+".png");//loads the random image
  image(img, 185, 325, 350, 375);//displays the image
}

void draw() {
  //loops over every person and displays their image in a 4 by 5 display
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 5; j++) {
      img = loadImage("images/"+(i*5+j+1)+".png");//multiplies current row by number of colums and then adds number of elements in current row
      image(img, 720+j*144, i*200, 144, 200);//x: 720(where images start) plus multiplies number of columns by 144 (width of each image) || y: number of rows times 200 (height of each image)
  }
  }
  img = loadImage("images/22.png");//show guess who logo
  image(img, 0, 0, 720, 200);
  

//display a black square at every coordinate from the x and y lists
  for (int i = 0; i < black_xs.size(); i++) {
    img = loadImage("images/black.png");
    image(img, black_xs.get(i), black_ys.get(i), 144, 200);
  }
  
  
}

void mouseClicked() {
 
  //check if click is in the image area
  if (mouseX >= 720) {
    //find the closest image x and y to where the user clicked
    int black_x = mouseX / 144;
    black_x = black_x * 144;
    int black_y = mouseY / 200;
    black_y = black_y * 200;
    
    println(black_x);
    
    boolean found = false;
      //remove from the black square lists
    for (int i = 0; i < black_xs.size(); i++) {
        if ((black_xs.get(i) == black_x) && (black_ys.get(i) == black_y)) {
          black_xs.remove(i);
          black_ys.remove(i);
          found = true;
        }
        
      }
   //if position is not already in list, add to list
    if (found == false) {
      println("added");
      black_xs.append(black_x);
      black_ys.append(black_y);
    }
    
    println(black_xs);
    println(black_ys);
    
  
    
    
  }

  

}
