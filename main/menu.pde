class Menu {
  RectButton page1 = new RectButton("Pages 1", 300, 200);
  ArrayList<RectButton> page = new ArrayList<RectButton>();
  PImage bg;
  
  void setup() {
    for(int j = 0; j<numberOfRow; j++) {
      for(int i = 0; i<numberOfCollumn; i++) {
        page.add(new RectButton("Quiz " + (i+j*numberOfCollumn), 400 + i * 200, 200 + j * 100, 30));
      }
    }
    bg = loadImage("../data/img/menuBG.jpg");
  }
  
  void draw() {
    
    background(bg);
    for(RectButton button : page) {
      button.draw();
    }
  }
  
  void mousePressed() {
    for(int i=0; i<page.size();i++) {
      if(page.get(i).clicked()) {
        currentPage = "Q_" + i;
      }
    }
  }
}
