class Star
{
  int Hab;
  String DisplayName;
  float Distance;
  float Xg, Yg, Zg;
  float AbsMag;
  
  Star(int Hab, String DisplayName, float Distance, float Xg, float Yg, float Zg, float AbsMag)
  {
    this.Hab = Hab;
    this.DisplayName = DisplayName;
    this.Distance = Distance;
    this.Xg = Xg;
    this.Yg = Yg;
    this.Zg = Zg;
    this.AbsMag = AbsMag;
  }
  
  String toString()
  {
    return Hab + ", " + DisplayName + ", " + Distance + ", " + Xg + ", " + Yg
    + ", " + Zg + ", " + AbsMag;
  }
  
}