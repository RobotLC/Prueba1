  
PrintWriter output;
String PATH="/home/robot/Desktop"
void setup() {
  // Create a new file in the sketch directory
  output = createWriter(PATH+"positions.txt"); 
}

void draw() {
  point(mouseX, mouseY);
  output.println(mouseX + "t" + mouseY); // Write the coordinate to the file
}

void keyPressed() {
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}
