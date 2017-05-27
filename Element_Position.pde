void korovaElement() {
  //myKnob(PApplet applet, String label_, int posx_, int posy_, int rW, int rW, int r_)
  for (int i=0; i<4; i++) {
    elementData.add( new myUI(this, cp5, "P"+(i+1), memPosLUT[i], i, C[20]+i*spaceBetw, R[25], rW, rW, 2));
  }
  for (int i=4; i<8; i++) {
    elementData.add(new myUI(this, cp5, "P"+(i+1), memPosLUT[i], i, C[20]+(i-4)*spaceBetw, R[25]+spaceBetw, rW, rW, 2));
  }
  for (int i=8; i<12; i++) {
    elementData.add(new myUI(this, cp5, "P"+(i+1), memPosLUT[i], i, C[20]+(i-4)*spaceBetw, R[25], rW, rW, 2));
  }
  for (int i=12; i<16; i++) {
    elementData.add(new myUI(this, cp5, "P"+(i+1), memPosLUT[i], i, C[20]+(i-8)*spaceBetw, R[25]+spaceBetw, rW, rW, 2));
  }
  //void FFSliderPosition() {
  for (int i=16; i<20; i++) {
    elementData.add(new myUI(this, cp5, "F"+(i-16), memPosLUT[i], i, C[40]+(i-16)*spaceBetw, R[25]+spaceBetw*4 + random(rH*5.5), rW, rH-10, 0));
  }
  //void buttPosition() {
  //myUI(PApplet applet, String label_, int posx_, int posy_, int rW, int rW)
  for (int i=20; i<24; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, C[20]+(i-20)*spaceBetw, R[25]+spaceBetw*2, rW, rW, 1));
  }
  for (int i=24; i<28; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, C[20]+(i-24)*spaceBetw, R[25]+spaceBetw*3, rW, rW, 1));
  }
  for (int i=28; i<32; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, C[20]+(i-24)*spaceBetw, R[25]+spaceBetw*2, rW, rW, 1));
  }
  for (int i=32; i<36; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, C[20]+(i-28)*spaceBetw, R[25]+spaceBetw*3, rW, rW, 1));
  }
  for (int i=36; i<40; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, C[20]+(i-36)*spaceBetw, R[25]+4*spaceBetw, rW, rW, 1));
  }
  for (int i=40; i<44; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, C[20]+(i-40)*spaceBetw, R[25]+5*spaceBetw, rW, rW, 1));
  }
  //void lateralButton() {
  elementData.add(new myUI(this, cp5, "B26", memPosLUT[46], 46, C[13], R[28], rW, rW, 1));
  elementData.add(new myUI(this, cp5, "B27", memPosLUT[44], 44, C[13], R[25]+spaceBetw*4, rW, rW, 1));
  elementData.add(new myUI(this, cp5, "B25", memPosLUT[45], 45, C[13], R[25]+spaceBetw*5, rW, rW, 1));
  for (int i=47; i<49; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, C[22]+(i-47)*spaceBetw*2, R[15], rW, rW, 1));
  }
  for (int i=49; i<51; i++) {
    elementData.add(new myUI(this, cp5, "B"+(i-19), memPosLUT[i], i, C[22]+(i-47)*spaceBetw*2, R[15], rW, rW, 1));
  }
  elementData.add(new myUI(this, cp5, "B32", memPosLUT[51], 51, C[20]+ 8*spaceBetw, R[28], rW, rW, 1));
  //void JTPosition() {
  elementData.add(new myUI(this, cp5, "J2", memPosLUT[52], 52, C[12], R[30]+spaceBetw, rW+15, rW+15, 2));
  elementData.add(new myUI(this, cp5, "T2", memPosLUT[53], 53, C[13]+10, R[31]+2*spaceBetw, rW-20, rW-20, 0));
  //void JoyStick() {
  elementData.add(new myUI(this, cp5, "JY", memPosLUT[54], 54, C[20]+0.2*spaceBetw, R[25]+6.1*spaceBetw, rW, rW/2, 0));
  elementData.add(new myUI(this, cp5, "JX", memPosLUT[55], 55, C[20]+0.2*spaceBetw, R[25]+6.6*spaceBetw, rW, rW/2, 0));
  elementData.add(new myUI(this, cp5, "JB", memPosLUT[56], 56, C[20]+0.8*spaceBetw, R[25]+5.75*spaceBetw, rW/2, rW/2, 1));
  //elementData.add(new myUI(this, cp5, "Pads", memPosLUT[43], 43,  rW*8/9, rW/2, 0));
  //void PageSwitch() {
  elementData.add(new myUI(this, cp5, "Switch", memPosLUT[57], 57, C[20]+1.2*spaceBetw, R[25]+6.1*spaceBetw, rW*11/12+rW/2, rW/2, 0));
  elementData.add(new myUI(this, cp5, "Mouse", memPosLUT[58], 58, C[20]+2.5*spaceBetw, R[25]+6.6*spaceBetw, rW*11/12+rW/2, rW/2, 0));
}
void resizeElement() {
  //myKnob(PApplet applet, String label_, int posx_, int posy_, int rW, int rW, int r_)
  for (int i=0; i<4; i++) {
    elementData.get(i).resizeElement(C[20]+i*spaceBetw, R[25], rW, rW);
  }
  for (int i=4; i<8; i++) {
    elementData.get(i).resizeElement(C[20]+(i-4)*spaceBetw, R[25]+spaceBetw, rW, rW);
  }
  for (int i=8; i<12; i++) {
    elementData.get(i).resizeElement(C[20]+(i-4)*spaceBetw, R[25], rW, rW);
  }
  for (int i=12; i<16; i++) {
    elementData.get(i).resizeElement(C[20]+(i-8)*spaceBetw, R[25]+spaceBetw, rW, rW);
  }
  //void FFSliderPosition() {
  for (int i=16; i<20; i++) {
    elementData.get(i).resizeElement(C[40]+(i-16)*spaceBetw, R[25]+spaceBetw*4 + random(rW), rW, rH-10);
  }
  //void buttPosition() {
  //myUI(PApplet applet, String label_, int posx_, int posy_, int rW, int rW)
  for (int i=20; i<24; i++) {
    elementData.get(i).resizeElement(C[20]+(i-20)*spaceBetw, R[25]+spaceBetw*2, rW, rW);
  }
  for (int i=24; i<28; i++) {
    elementData.get(i).resizeElement( C[20]+(i-24)*spaceBetw, R[25]+spaceBetw*3, rW, rW);
  }
  for (int i=28; i<32; i++) {
    elementData.get(i).resizeElement( C[20]+(i-24)*spaceBetw, R[25]+spaceBetw*2, rW, rW);
  }
  for (int i=32; i<36; i++) {
    elementData.get(i).resizeElement( C[20]+(i-28)*spaceBetw, R[25]+spaceBetw*3, rW, rW);
  }
  for (int i=36; i<40; i++) {
    elementData.get(i).resizeElement(C[20]+(i-36)*spaceBetw, R[25]+4*spaceBetw, rW, rW);
  }
  for (int i=40; i<44; i++) {
    elementData.get(i).resizeElement( C[20]+(i-40)*spaceBetw, R[25]+5*spaceBetw, rW, rW);
  }
  elementData.get(46).resizeElement(C[13], R[28], rW, rW);
  elementData.get(44).resizeElement(C[13], R[25]+spaceBetw*4, rW, rW);
  elementData.get(45).resizeElement(C[13], R[25]+spaceBetw*5, rW, rW);

  for (int i=47; i<49; i++) {
    elementData.get(i).resizeElement( C[22]+(i-47)*spaceBetw*2, R[15], rW, rW);
  }
  for (int i=49; i<51; i++) {
    elementData.get(i).resizeElement(C[22]+(i-47)*spaceBetw*2, R[15], rW, rW);
  }
  elementData.get(51).resizeElement( C[20]+ 8*spaceBetw, R[28], rW, rW);
  elementData.get(52).resizeElement( C[12], R[30]+spaceBetw, rW+15, rW+15);
  elementData.get(53).resizeElement( C[13]+10, R[31]+2*spaceBetw, rW-20, rW-20);
  elementData.get(54).resizeElement( C[20]+0.2*spaceBetw, R[25]+6.1*spaceBetw, rW, rW/2);
  elementData.get(55).resizeElement( C[20]+0.2*spaceBetw, R[25]+6.6*spaceBetw, rW, rW/2);
  elementData.get(56).resizeElement( C[20]+0.8*spaceBetw, R[25]+5.75*spaceBetw, rW/2, rW/2);
  elementData.get(57).resizeElement( C[20]+1.2*spaceBetw, R[25]+6.1*spaceBetw, rW*11/12+rW/2, rW/2);
  elementData.get(58).resizeElement( C[20]+2.5*spaceBetw, R[25]+6.6*spaceBetw, rW*11/12+rW/2, rW/2);

  //void JTPosition() {
  sizeUIElement();
}
// THE BUTTON POSITION AND POLYMORFISM in ElementPosition class//
void setupElement () {
  korovaElement();
}