//import processing.sound.*;

int numberOfQuestion = 20;
int numberOfCollumn = 4;
int numberOfRow = numberOfQuestion/numberOfCollumn;

String currentPage = "menu";

Menu menu = new Menu();
ArrayList<Question> question = new ArrayList<Question>();

void setup() {
  size(1366, 768);
  menu.setup();
  question.add(new Question0());
  for (Question q : question){
    q.setup();
  }
  
  //SoundFile soundFile = new SoundFile(this, "../data/music/bgMusic.mp3");
  //soundFile.loop();
}

void draw() {
  background(255);
  switch(currentPage) {
    case "menu":
      menu.draw();
      break;
    case "Q_0":
      question.get(0).draw();
      break;
  }
}

void mousePressed() {
  switch(currentPage) {
    case "menu":
      menu.mousePressed();
      break;
    case "Q_0":
      question.get(0).mousePressed();
      break;
  }
}
