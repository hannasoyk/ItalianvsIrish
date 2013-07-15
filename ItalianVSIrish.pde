ArrayList<Ingredients> ingredients = new ArrayList();
PFont f;
PFont t;
PFont m;

PFont italics;

void setup(){
  size(800, 850);
  smooth();
  f = createFont("SansSerif", 10, true);
  t = createFont("ACaslonPro-Bold", 22, true);
  m = createFont("ACaslonPro-Regular", 22, true);

  italics = createFont("ACaslonPro-Italic", 22, true);
  textFont(f);

  loadData();
  
}

void draw() {
  background(255);
  smooth();

  Italian();
  Irish();
  title();
  slopeLine();
}


void loadData(){
 String[] rows = loadStrings("IrishVSItalian2.csv"); 
  
  for(int i=1; i<21; i++) {
  Ingredients ing = new Ingredients();
  ing.fromCSV(rows[i].split(","));
  ingredients.add(ing);
  }
}

void Italian(){
  for(int i=0; i<20; i++) {
    Ingredients ing = ingredients.get(i);
    float x = 400;
  
    float y = map(ing.ItalianPer, 6, 79, 20, 800);
    ing.pos.x = x;
    ing.pos.y = y;
    float w = 10;
    //println(ing.ItalianPer);
    
    stroke(0);
    fill(0);
    textFont(f);
    textAlign(RIGHT);
    //ellipse(x, y, w, w);
    
 
    text(ing.ItalianIng, x, height-y);
    
      println("Italian" + y + " " + ing.ItalianIng);

  }
}


void Irish(){
  for(int i=0; i<20; i++) {
    Ingredients ing = ingredients.get(i);
    float x = 630;
  
    float y = map(ing.IrishPer, 6, 79, 20, 800);
    println("Irish" + y + " " + ing.IrishIng);
    //println(y);
    ing.pos.x = x;
    ing.pos.y = y;
    float w = 10;
    //println(ing.ItalianPer);
    
    stroke(0);
    fill(0);
    textFont(f);
    textAlign(LEFT);
    //ellipse(x, y, w, w);
    
 
    text(ing.IrishIng, x, height-y);
    
  
  }
}

void title(){
 textFont(t,20);
 text("Italian vs Irish", 20, 40); 
 textFont(f,12);
 fill(160);
 text("ingredient count", 20, 60);
 text("percentage total slope graph", 20, 74);
 textFont(italics,20);
 text("Irish", 630, 40);
 textAlign(RIGHT);
 text("Italian", 400, 40);
 textAlign(LEFT);
 

}

void slopeLine(){
// if ItalianIng = IrishIng, then draw a line from that x,y to the other x,y 

//fake slopeline
fill(0);

//butter
line(620, 160, 410, 620);

//eggs
line(410, height-130, 620, height-110); 

//black pepper
line(410, height-564, 620, height-308); 

//pepper
line(410, height-250, 620, height-287); 

//all-purpose flour
line(410, height-180, 620, height-329); 


}

  

