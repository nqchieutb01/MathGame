class Question {
  PImage bg;
  RectButton menu = new RectButton("Menu", 50, 50);
  Paragraph quiz;
  
  void setup() {
    bg = loadImage("../data/img/questionBG.jpg");
  }
  
  void draw() {
    background(bg);
    menu.draw();
    quiz.draw();
  }
  
  void mousePressed() {
    if(menu.clicked())
      currentPage = "menu";
  }
}
