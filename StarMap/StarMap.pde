//Finn McLaughlin
//C15536837
void setup()
{
  size(800,800);
  table = loadTable("HabHYG15ly.csv", "header");
  
  loadData();
  printStars();
  
  background(0);
  border = createFont("Arial", 16, true);
}

Table table;
ArrayList<Star> Star_Array = new ArrayList<Star>();
PFont border;
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
    println(stars);
  }
}

void draw()
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