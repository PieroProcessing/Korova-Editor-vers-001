//********************************** 
//  POSITION GLOBAL VARIABLES FOR THE LOOK OF THE EDITOR
//  interface grid for element location
//**********************************
int cols = 100;
int rows = 100;
float [] R = new float [rows];
float [] C = new float [cols];
float W, H, referenceW, referenceH;
PImage logo;//, jogWheel ; 
float spaceBetw;
//**********************************
/// THE AMBIENT VARIABLES
//***********************************
PFont f;

int fontDimension;
int rW;// = 60;
int rH;// = 60;
//int rR = 30;

void metric() {
  referenceW = width;
  referenceH = height;
  W=width/100;
  H=height/100;

  for (int i = 0; i < cols; i++) {
    C[i] = W*i ;
    // println("i: "+ C[i]);
  }
  for (int j = 0; j < rows; j++) {
    R[j] =  H*j ;
    // println("j: "+ R[j]);
  }
  spaceBetw =  C[5];
  rW = int(4*W);
  rH = int(4*H);
  fontDimension = width/110;

  textFont(f, fontDimension);
  cp5.setFont(f, fontDimension);
  control.setFont(f, fontDimension);
}

// *****************************************
//           the background look
//******************************************

void interfaceDisp() {
  // Background
  background(16, 50);
  
  // box for Setting Label
  stroke(64);
  fill(32, 180);
  rect( C[75], R[5], (int)C[18], R[2]+5);


  // box for sis button
  stroke(64);
  fill(32, 180);
  rect(C[20], R[8]-5, C[39], R[5]);

  // the INFO box 
  stroke(100);
  rect(C[20], R[87], C[39], R[15]);

  // box for Settings elements
  stroke(64);
  fill(64, 180);
  rect( C[75], R[15], (int)C[18], R[58]);
  // jogWheel img
  //image(jogWheel,C[11]+spaceBetw/2, R[9]+spaceBetw*3);

  // fake outline for faders
  strokeWeight(1);
  for (int i=0; i<4; i++) {
    fill(24);
    //rect(C[3]*2.85-3, R[7]+spaceBetw*4, rW/4, rH*2);
    rect( C[40]+i*spaceBetw+(rW/3), R[25]+spaceBetw*4, rW/4, rH*6);
    fill(0);
    //rect(C[3]*2.85+3, R[7]+spaceBetw*4+3, rW/4-12, rH*2-3);
    rect( C[40]+i*spaceBetw+rW/3+2, R[25]+spaceBetw*4+3, rW/4-4, rH*6-6);
  }
}
void midiMonitor() {
  // background
  noStroke();
  fill(32, 32, 32);
  strokeWeight(2);
  stroke(200);  
  rect(C[75], R[75], (int) C[18], R[27]); //red out
  //noStroke();
  noFill();
  strokeWeight(2);
  stroke(128);  
  rect(C[75]+1, R[75]+1, (int) C[18]-2, R[27]-2); //red in
  fill(0, 255, 0);
  textSize(width/75);
  text("Channel: "+ Channel, C[75]+5, (int) R[74]+rW/2);
  text("Type: "+ optCC, C[75]+5, (int)R[78]+rW/2);
  text("Value 1: "+Note, C[75]+5, (int) R[82]+rW/2);
  text("Value 2: "+Intensity, C[75]+5, (int) R[86]+rW/2);
}
void explanationText() {  
  textSize(width/120);
  //textAlign(LEFT);
  if ( infoGraph<16) {        
    text("Potenciometers can send  Poly-AT, Control-Change, Channel-AT\n and Pitch-Bend messages.\n"+
      "Set them in POT MODE (debouncing not active) to achieve a coninuous output.", 
      C[20]+5, R[88]+5);
  } else if (infoGraph<21) { 
    //SLIDER
    text("Sliders can send  Poly-AT, Control-Change, Channel-AT\n and Pitch-Bend messages.\n"+
      "Set them in POT MODE (debouncing not active) to achieve a coninuous output.", 
      C[20]+5, R[88]+5);
  } else if (infoGraph<52) {
    //BUTTONS
    text("Buttons can send Note, Poly-AT, Control-Change, Program-Change,\nChannel-AT and Pitch-Bend messages.\n"+
      "Set them in BUTTON MODE or TOGGLE MODE to activate debouncing,\nand achieve a clean on-off message.", 
      C[20]+5, R[88]+5);
  } else if (infoGraph<53) {
    //JOBWEAL
    text("The side-Spinner can send Poly-AT, Control-Change, Program-Change,\nChannel-AT and Pitch-Bend messages.\n"+
      "If MIDI TYPE is set to NOTE or PITCH-BEND, it will output midi CC data\nin POT mode (from min to max)\n"+
      "In all the other cases it will output the specied MIDI TYPE message in ENDLESS MODE.\n"+
      "It can also act as a mouse wheel (see mouse section)", 
      C[20]+5, R[88]+5);
  } else if (infoGraph<54) {
    // TOUCH SENSOR T2
    text("The touch sensor acs like any othe button.\n"+ 
      "It can send Note, Poly-AT, Control-Change, Program-Change, \nChannel-AT and Pitch-Bend messages.\n"+
      "It will also reset the Pitch-Bend value of the jog wheels to it's mid position.", 
      C[20]+5, R[88]+5);
  } else if (infoGraph<56) {
    //jx e jy
    text("Joystick X can sen  Poly-AT, Control-Change, \nChannel-AT and Pitch-Bend messages.\n"+
      "Joystick Y can sen  Poly-AT, Control-Change, Channel-AT and Pitch-Bend messages.\n"+
      "Set it in POT MODE (debouncing not active) to achieve a coninuous output.", 
      C[20]+5, R[88]+5);
  } else if (infoGraph<57) {
    // the jb button
    text("Joystick Button can send Note, Poly-AT, Control-Change, Program-Change,\nChannel-AT and Pitch-Bend messages.\n"+
      "Set it in BUTTON MODE or TOGGLE MODE to activate debouncing,\nand achieve a clean on-off message. ", 
       C[20]+5, R[88]+5);
  } else if (infoGraph<58) {
    //switch
    text("The page-switch can send note or cc messages \n recorded into the 1st page preset only.", 
      C[20]+5, R[88]+5);
  } else if (infoGraph<59) {
    //mouse
    text("MOUSE: Maxvalue = 0 - no mouse - no keys emulation\n"+
      "Maxvalue = 1 to activate mouse emulation, via joystick.\n"+
      "Maxvalue = 2 to activate arrow direction keys emulation, via joystick.\n"+
      "Value    = 1 to activate mouse Wheel emulation, via Side-Spinner.", 
      C[20]+5, R[88]+5);
  } else if (infoGraph<2002) {
    text("Midi event type: Note, Poly-AT, Control-Change, Program-Change,\n Channel-AT and Pitch-Bend messages",
    C[20]+5, R[88]+5);
  } else if (infoGraph<2003) {
    text("Value of the note", C[20]+5, R[88]+5);
  } else if (infoGraph<2004) {
    text("Min Value", C[20]+5, R[88]+5);
  } else if (infoGraph<2005) {
    text("Max Value", C[20]+5, R[88]+5);
  } else if (infoGraph<2006) {
    text("Midi Channel", C[20]+5, R[88]+5);
  } else if (infoGraph<2007) {
    text("Address DMX", C[20]+5, R[88]+5);
  } else if (infoGraph<2008) {
    text("POT = Continuous output, use this setup\n for potenciometers and sensors.\n"+
      "BUTTON = debounced on-off output. Use it for Pushbuttons.\n"+
      "TOGGLE = debounced Toggle mode.\n"+
      "TOGGLE GROUPS = Only a single button can be ON at a time, for it's specified group.", C[20]+5, R[88]+5);
  } else if (infoGraph<2010) {
    text("MODIFIERS:\n"+ 
      "if QWERTY keys emulation is active, it's possible to add MODIFIERS\n and combinations of them.\n"+
      "So, it's possible to emulate complex QWERTY keystrokes on a single button.", C[20]+5, R[88]+5);
  } else if (infoGraph<2011) {
    text("KEYS: QWERTY keyboard emulation.\n"+
      "list of ASCII keys.\n"+
      "MIDI data will not be output in QWERTY key mode, choose NULL to have midi output.", C[20]+5, R[88]+5);
  }
}