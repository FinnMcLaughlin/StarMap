//Finn McLaughlin
//C15536837
void setup()
{
  size(800,800);
  table = loadTable("HabHYG15ly.csv", "header");
  background(0);
  border = createFont("Arial", 16, true);
  name_font = createFont("Arial", 16, true);

  loadData();
  printStars();
  drawGrid();
  drawStars();
  
}

Table table;
ArrayList<Star> Star_Array = new ArrayList<Star>();
PFont border, name_font;
Star stars;

void loadData()
{
   for(TableRow row : table.rows() )
   {
     Star stars = new Star(row.getInt("Hab?"),
                           row.getString("Display Name"),
                           row.getFloat("Distance"),
                           row.getFloat("Xg"),
                           row.getFloat("Yg"),
                           row.getFloat("Zg"),
                           row.getFloat("AbsMag")
                           );
                           Star_Array.add(stars);
   }
}

void printStars()
{
  for(Star stars : Star_Array)
  {
    //println(stars);
  }
}

void drawGrid()
{
   for(int i=50; i < 750; i += 70)
   {
     for(int j=50; j < 750; j += 70)
     {
       noFill();
       stroke(200, 0, 200);
       rect(i, j, 70, 70);
     }
   }
   
   textFont(border, 15);
   fill(200, 0, 200);
   for(int i=-5, j=60; i < 6; i++, j += 70)
   {
     text(i, 15, j);
   }
   
   for(int i=-5, j=45; i < 6; i++, j += 70)
   {
     text(i, j, 25);
   }  
}


void drawStars()
{
  for(int i=0; i < Star_Array.size(); i++)
  {
    float xVal = map(((Star_Array.get(i)).Xg), -5, 5, 50, 750);
    float yVal = map(((Star_Array.get(i)).Yg), -5, 5, 50, 750);
    String name = ((Star_Array.get(i)).DisplayName);
    
    stroke(200, 200, 0);
    line(xVal-5, yVal, xVal+5, yVal);
    line(xVal, yVal-5, xVal, yVal+5);
    noFill();
    stroke(255, 0, 0);
    ellipse(xVal, yVal, 10, 10);
    
    textFont(name_font, 10);
    fill(255);
    textAlign(LEFT);
    text(name, xVal+10, yVal+4); 
  }
}
void draw()
{

}