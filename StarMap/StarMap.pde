//Finn McLaughlin
//C15536837
void setup()
{
  size(800,800);
  table = loadTable("HabHYG15ly.csv", "header");
  
  loadData();
  printStars();
  
  background(0);
}

Table table;
ArrayList<Star> Star_Array = new ArrayList<Star>();
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
  for(int i=1; i < 12; i++)
  {
    float x = map(i, 0, 11, 0, 800);
    stroke(200, 0, 200);
    line(x, 50, x, height-50);
    line(50, x, width-50, x);
  }
}