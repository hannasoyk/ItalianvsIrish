class Ingredients {
  int ItalianNum;
  String ItalianIng;
  int ItalianPer;
  String IrishIng;
  int IrishNum;
  int IrishPer;
  PVector pos = new PVector();

  

 void fromCSV(String[] input) {
   ItalianNum = int(input[0]);
   ItalianIng = input[1];
   ItalianPer = int(input[2]);
   IrishNum = int(input[3]);
   IrishIng = input[4];
   IrishPer = int(input[5]);
}

}
