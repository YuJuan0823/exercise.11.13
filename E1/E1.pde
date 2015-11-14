boolean light=true;
boolean dark=false;

int cols=10;
int rows=10;
boolean[][] grid= new boolean[cols][rows];

void setup() {
  size(200,200);
  
  for(cols=0;cols<10;cols++){
  for(rows=0;rows<10;rows++){
  grid[cols][rows]=dark;
  }
  }
}

void draw() {

for(cols=0;cols<10;cols++){
for(rows=0;rows<10;rows++){
  rect(cols*20,rows*20,20,20);
if (grid[cols][rows]==light){
fill(255);
rect(cols*20,rows*20,20,20);
}else{
fill(0);
rect(cols*20,rows*20,20,20);
}
}
}
}


void mouseReleased (){
int  colsIndex=mouseX/20;
int  rowsIndex=mouseY/20;
grid[colsIndex][rowsIndex]=!grid[colsIndex][rowsIndex];
if(colsIndex+1<10){
grid[colsIndex+1][rowsIndex]=!grid[colsIndex+1][rowsIndex];
}
if(colsIndex-1>=0){
grid[colsIndex-1][rowsIndex]=!grid[colsIndex-1][rowsIndex];
}
if(rowsIndex-1>=0){
grid[colsIndex][rowsIndex-1]=!grid[colsIndex][rowsIndex-1];
}
if(rowsIndex+1<10){
grid[colsIndex][rowsIndex+1]=!grid[colsIndex][rowsIndex+1];
}
}


  
  
