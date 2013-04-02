//import javax.media.opengl.GL;
//
//PGraphicsOpenGL pgl;
//GL gl;

String dancer = "anna";
String fileName = "new_" + dancer + "_dance.txt";
int[] xyz = {-60, 500, 0}; 
int[] cam = {5, 0, -350, 0, 0, 0}; 

String[] lines;
FrameInfo[] frames;
int frameCountInt;
int jointCount = 63;
int jointCountRead = 73;
int t = 0;
float defaultRad = 4;

int maxTrailCount = 20;
ArrayList[] trails;
float[] opacity;

void setup() {
  size(400, 600, P3D);
  //pg = createGraphics(400, 600, P3D);
  frameRate(120);
  smooth();
  noStroke();
//  hint(DISABLE_DEPTH_TEST); 

  initArray();
  loadData();
}

void initArray() {
  trails = new ArrayList[jointCount];
  opacity = new float[jointCount];
  for (int i=0; i < jointCount; i++) {
    trails[i] = new ArrayList(); 
    opacity[i] = 255 * (float)i/maxTrailCount;
  }
}

void draw() {

  if (t < frameCountInt) { 
    //long start = System.currentTimeMillis();
    
    background(0);
//    fill(245, 238, 184);


    camera(cam[0], cam[1], cam[2], cam[3], cam[4], cam[5], 0, -1, 0);
    scale(1, 1, 0.5);
    translate(xyz[0], -height + xyz[1], xyz[2]);

//    drawPlane();
//    noStroke();
//    lights();
//    println(t);
    FrameInfo currentFrame = frames[t];
    for (int i = 0; i < jointCount; i++) {
//      if (i == 28) {
        Joint joint = (Joint)currentFrame.joints.get(i);

        //stroke(currentCloud.c); //fill for sphere in 3D, stroke for line
        PVector pos = new PVector(joint.x, joint.y, joint.z);
        trails[i].add(pos);
        removeArrayLastElem(i);

        int j = trails[i].size() - 1;
        while (j > -1 ) {
          float op = opacity[j];
          
          fill(joint.c, op);    
          PVector pointToDraw = (PVector)trails[i].get(j);
          //println(j + " " + joint.c + " " + op + " " + pointToDraw.x + " " + pointToDraw.y + " " + pointToDraw.z);
          
          pushMatrix();
          translate(pointToDraw.x, pointToDraw.y, pointToDraw.z);
          sphere(defaultRad);
          popMatrix();

          j--;
        }
      }

    t++;


    saveFrame("images/" + dancer + "-######.png");
    
    //long stop = System.currentTimeMillis();
    //println("Frame drawn in " + (stop - start) + " milliseconds.");
  }
  else {
    noLoop();
  }

}

void removeArrayLastElem(int i) {
  if (trails[i].size() > maxTrailCount) {
    trails[i].remove(0);
  }
}

void loadData() {
  lines = loadStrings(fileName);

  String[] frameInfoData = split(lines[0], " ");
  frameCountInt = int(frameInfoData[1]);
  println("Total frame: " + frameCountInt);
  frames = new FrameInfo[frameCountInt];

  int i = 0;
  while (i < frameCountInt) {
    FrameInfo frame = new FrameInfo();
    frame.id = i;
    frame.joints = new ArrayList();

    for (int j = 0; j < jointCountRead; j++) {
      String[] pieces = split(lines[2 + i * (jointCountRead + 1) + j], " "); 
      if (j!=57 && j!=58 && j!=71 && j!=72 && j!=15 && j!=16 && j!=17 && j!=32 && j!=33 && j!=34) {
        frame.joints.add(new Joint(j, pieces));
        //println(i + " " + j + " " + frame.joints[j].name + ":" + frame.joints[j].x +"," + frame.joints[j].y + "," + frame.joints[j].z + "," + frame.joints[j].c);
      }
    }
    frames[i] = frame;

    i++;
  }
  println("Loading DONE.");
}

void drawPlane() {
  strokeWeight(1);
  //  stroke(50, 227, 81);
  stroke(255, 255, 255);

//  for (int i=-200; i<=300; i+=20) {
//    beginShape();
//    vertex(-200, 0, i);
//    vertex(400, 0, i);
//    endShape();
//  }
//
//  for (int i=-200; i<=400; i+=20) {
//    beginShape();
//    vertex(i, 0, -200);
//    vertex(i, 0, 300);
//    endShape();
//  }

  //x blue
  stroke(50, 78, 227);
  beginShape();
  vertex(0, 0, 0);
  vertex(600, 0, 0);
  endShape();

  //y red
  stroke(227, 74, 50);
  beginShape();
  vertex(0, 0, 0);
  vertex(0, 600, 0);
  endShape();  

  //z green
  stroke(50, 227, 81);
  beginShape();
  vertex(0, 0, 0);
  vertex(0, 0, 600);
  endShape();
}

