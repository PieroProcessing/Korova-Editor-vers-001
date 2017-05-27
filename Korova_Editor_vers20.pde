//************************************** //<>// //<>// //<>//
//    Risoluzione consigliata  1440*900
//**************************************

//Import the library to create an interface
import controlP5.*;
//to work with file
import java.util.*;
import java.util.Date;
// Import class for pop up midi port setup
import javax.swing.*; 
//Import the MidiMessage classes http://java.sun.com/j2se/1.5.0/docs/api/javax/sound/midi/MidiMessage.html
import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage; 
import javax.sound.midi.SysexMessage;
import javax.sound.midi.ShortMessage;



//***********************************
//        button state to open the ui data settings
//**********************************
int idElement=0;
int infoGraph;
int setValueActiveElement= 0;
//**********************************
//**********************************

void setup() {

  //fullScreen();
  //size(1280 , 720);
  size( 1300,850);
  surface.setResizable(true);

  //**********************
  // for showing the logo 
  //**********************
  background(0);
  logo = loadImage("logo.png"); 
  image(logo, width/2-150, height/2-150);
  f = createFont("typeO.TTF", width/110);


  //jogWheel = loadImage("jw.png");
  init(); // pannel b
  metric(); // in interface graphics

  // HOW TO SET MIDI COMMUNICATIONS in Midi class//
  initMidi();

  // THE BUTTON POSITION AND POLYMORFISM in ElementPosition class//
  setupElement (); // element position

  //initTableOfElementData(); // pannel b
  setUIButtons(); // pannel b
  sizeUIElement();
  elementData.get(0).setDisplay(true);

  myBus.sendTimestamps(false);
}

void draw() {
  if (referenceW != width || referenceH != height) {
    metric();
    resizeElement();
    //println(width);
    //println(height);
  }
  background(0);

  //image(logo, width/2-150, height/2-150);
  //*******************************************graphic elements
  interfaceDisp(); // in interface class
  //fill(0);
  //****************************************** Setting Controller Element
  elementListener(); // to trigger the button element of the dart
  explanationText();
  //THE MIDI MONITOR in MIDIClass//
  midiMonitor(); // in midi class
}

void controlEvent(CallbackEvent theEvent) {
  //println("id element: "+ idElement);
  switch(theEvent.getAction()) {
    case(ControlP5.ACTION_PRESSED): 
    //println("Action:PRESSED");
    // println(theEvent.getController().getId());
    infoGraph = theEvent.getController().getId();
    println(" info graph: " + infoGraph);
    if (infoGraph != -1 && infoGraph<elementData.size()) {
      println(" id element: " + infoGraph);
      idElement = infoGraph;
      elementData.get(idElement).sendMidiMessageON();
      elementData.get(idElement).setStateButton(true);
    }

    break;
    case(ControlP5.ACTION_RELEASED):
    if (idElement != -1 && idElement<elementData.size()) {
      elementData.get(idElement).sendMidiMessageOFF();
      //elementData.get(idElement).setStateButton(false);
    }
    //println("Action:RELEASED");
    break;
  }
}
void elementListener() {
  if (idElement != -1 && idElement< elementData.size()) {
    // for (int i=0; i<elementData.size(); i++) {
    if ( elementData.get(idElement).getStateButton() && !elementData.get(idElement).getStateDisplay() ) {
      //elementData.get(idElement).setStateButton(true);
      elementData.get(idElement).setDisplay(true);
      //println("activation display");
    } 
    //elementData.get(idElement).setStateButton(false);
    elementData.get(idElement).displaySettingsUI();
    elementData.get(idElement).setStateButton(true);
    //println("display");
  }
  for (int i=0; i<elementData.size(); i++) {
    if (i != idElement && idElement< elementData.size()) {
      elementData.get(i).setStateButton(false);
      elementData.get(i).setDisplay(false);
    }
  }
  //println("reset others");
}