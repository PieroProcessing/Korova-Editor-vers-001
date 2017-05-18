void potPosition() {
  //myKnob(PApplet applet, String label_, int posx_, int posy_, int rW, int rH, int r_)
  for (int i=0; i<4; i++) {
    elementData.add( new myUI(this, cp5, "P"+(i+1), memPosLUT[i], i, gridCols[4]+i*spaceBetw, gridRow[7], rW, rH, 2));
  }
  for (int i=4; i<8; i++) {
    elementData.add(new myUI(this, cp5, "P"+(i+1), memPosLUT[i], i, gridCols[4]+(i-4)*spaceBetw, gridRow[7]+spaceBetw, rW, rH, 2));
  }
  for (int i=8; i<12; i++) {
    elementData.add(new myUI(this, cp5, "P"+(i+1), memPosLUT[i], i, gridCols[4]+(i-4)*spaceBetw, gridRow[7], rW, rH, 2));
  }

  for (int i=12; i<16; i++) {
    elementData.add(new myUI(this, cp5, "P"+(i+1), memPosLUT[i], i, gridCols[4]+(i-8)*spaceBetw, gridRow[7]+spaceBetw, rW, rH, 2));
  }
}
void FFSliderPosition() {
  for (int i=0; i<4; i++) {
    elementData.add(new myUI(this, cp5, "F"+(i+1), memPosLUT[16+i], 16+i, gridCols[3]*3.3+i*spaceBetw, gridRow[8]+spaceBetw*4 + random(50), rW, rH-34, 0));
  }
}
void buttPosition() {
  //myUI(PApplet applet, String label_, int posx_, int posy_, int rW, int rH)
  for (int i=20; i<24; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, gridCols[4]+(i-20)*spaceBetw, gridRow[11], rW, rH, 1));
  }
  for (int i=24; i<28; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, gridCols[4]+(i-24)*spaceBetw, gridRow[11]+spaceBetw, rW, rH, 1));
  }
  for (int i=28; i<32; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, gridCols[4]+(i-24)*spaceBetw, gridRow[11], rW, rH, 1));
  }
  for (int i=32; i<36; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, gridCols[4]+(i-28)*spaceBetw, gridRow[11]+spaceBetw, rW, rH, 1));
  }
  for (int i=36; i<40; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, gridCols[4]+(i-36)*spaceBetw, gridRow[11]+2*spaceBetw, rW, rH, 1));
  }
  for (int i=40; i<44; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, gridCols[4]+(i-40)*spaceBetw, gridRow[11]+3*spaceBetw, rW, rH, 1));
  }
}
void lateralButton() {
  elementData.add(new myUI(this, cp5, "B25", memPosLUT[36], 44, gridCols[3]-rW/3, gridRow[8], rW, rH, 1));
  elementData.add(new myUI(this, cp5, "B26", memPosLUT[34], 45, gridCols[3]-rW/3, gridRow[6]+spaceBetw*4, rW, rH, 1));
  elementData.add(new myUI(this, cp5, "B27", memPosLUT[35], 46, gridCols[4], gridRow[11]+spaceBetw*3, rW+5, rH+5, 1));

  for (int i=47; i<49; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, gridCols[4]+(i-47)*gridCols[2]+2*rW/3, gridRow[2]+spaceBetw-rH/10, rW, rH, 1));
  }
  for (int i=49; i<51; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, gridCols[5]+(i-47)*gridCols[2]+rW/2, gridRow[2]+spaceBetw-rH/10, rW, rH, 1));
  }
  elementData.add(new myUI(this, cp5, "B32", memPosLUT[34], 51, gridCols[3]+ 9*spaceBetw, gridRow[9], rW, rH, 1));
}
void JTPosition() {
  elementData.add(new myUI(this, cp5, "J2", memPosLUT[39], 52, gridCols[3]-rW/2, gridRow[6]+spaceBetw*2, rW+15, rH+15, 2));
  elementData.add(new myUI(this, cp5, "T2", memPosLUT[41], 53, gridCols[3]-rW/5, gridRow[6]+spaceBetw*3, rW-20, rH-20, 0));
}

void JoyStick() {
  elementData.add(new myUI(this, cp5, "JY", memPosLUT[38], 54, gridCols[4], gridRow[8]+spaceBetw*4+2*rH, rW, rH/2, 0));
  elementData.add(new myUI(this, cp5, "JX", memPosLUT[38], 55, gridCols[5]+spaceBetw/3, gridRow[8]+spaceBetw*4+2*rH, rW, rH/2, 0));
  elementData.add(new myUI(this, cp5, "JB", memPosLUT[40], 56, gridCols[4]+spaceBetw-20, gridRow[8]+spaceBetw*5+rH/3, rW-30, rH-30, 1));
  //elementData.add(new myUI(this, cp5, "Pads", memPosLUT[43], 43,  rW*8/9, rH/2, 0));
}
void PageSwitch() {
  elementData.add(new myUI(this, cp5, "Switch", memPosLUT[44], 57, gridCols[3]+4*spaceBetw+rW/2, gridRow[8]+spaceBetw*4+2*rH, rW*11/12+rW/2, rH/2, 0));
  elementData.add(new myUI(this, cp5, "Mouse", memPosLUT[44], 58, gridCols[3]+3*spaceBetw+8, gridRow[8]+spaceBetw*4+2*rH, rW*11/12+rW/2, rH/2, 0));
}
// THE BUTTON POSITION AND POLYMORFISM in ElementPosition class//
void setupElement () {
  potPosition();
  FFSliderPosition();
  buttPosition();
  lateralButton();
  JTPosition();
  //sensorT();
  JoyStick();
  PageSwitch();
}