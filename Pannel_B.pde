// INTERFACE CONTROLL BUTTON
ControlP5 control;
Button exit, save, load, sendFirstPage, sendSecondPage, sendOnPageOne, sendOnPageTwo, controlWindow;

//**************************** 
//*****    the control p5 init
//**************************** 

void init() {
  control = new ControlP5(this);
  cp5 = new ControlP5(this);
  ellipseMode(CENTER);
  //textAlign(CENTER, CENTER);
}

// FUNCTION TO ACTIVATE PANEL BUTTON
void mousePressed() {
  if  (controlWindow.isPressed()) {
    surface.setSize(1440, 920);
    surface.setLocation(0, 0);
  }
  if (exit.isPressed()) {
    try { 
      exit();
    } 
    catch (Exception e) { 
      e.printStackTrace();
    }
  }
  if (save.isPressed()) {  
    try { 
      selectOutput("Save Editor Settings:", "fileToSave");
    } 
    catch (Exception e) { 
      println( e);
    }
  }
  if (load.isPressed()) { 
    try { 
      selectInput("Load Editor Settings:", "fileToLoad");
    } 
    catch (Exception e) { 
      e.printStackTrace();
    }
  }
  //*************
  //send all to first page
  //**************
  if (sendFirstPage.isPressed()) {
    myBus.sendMessage(241, 0, 0);
    delay(160);
    for (myUI pz : elementData) {
      myBus.sendMessage(176+pz.midiChannel-1, pz.note, pz.memoryPosition);
      delay(4);
      if ( pz.modifiers == 0) {
        myBus.sendMessage(176+pz.midiChannel-1, pz.setExcursionControllMax, pz.setExcursionControllMin);
      } else {
        myBus.sendMessage(176+pz.midiChannel-1, pz.setExcursionControllMax, pz.modifiers);
      }
      delay(4);
      myBus.sendMessage(176+pz.midiChannel-1, int(pz.toggleMode), pz.addressDMX);
      delay(4);
      myBus.sendMessage(176+pz.midiChannel-1, int(pz.keyBoard), int (pz.indexMidiType)); // da verificare
      delay(160);
    }
    myBus.sendMessage(241, 0, 0);
  }
  //*************
  //send all to second page
  //**************
  if (sendSecondPage.isPressed()) {
    myBus.sendMessage(241, 0, 0);    
    delay(160);
    for (myUI pz : elementData) {
      myBus.sendMessage(176+pz.midiChannel-1, pz.note, pz.memoryPosition + 64);
      delay(4);
      if ( pz.modifiers == 0) {
        myBus.sendMessage(176+pz.midiChannel-1, pz.setExcursionControllMax, pz.setExcursionControllMin);
      } else {
        myBus.sendMessage(176+pz.midiChannel-1, pz.setExcursionControllMax, pz.modifiers);
      }
      delay(4);
      myBus.sendMessage(176+pz.midiChannel-1, int(pz.toggleMode), pz.addressDMX);
      delay(4);
      myBus.sendMessage(176+pz.midiChannel-1, int(pz.keyBoard), int (pz.indexMidiType)); // da verificare
      delay(160);
    }
    //println("send all");
    myBus.sendMessage(241, 0, 0);
  }
  //*************
  //send selected to first page
  //**************
  if (sendOnPageOne.isPressed()) {
    myBus.sendMessage(241, 0, 0);
    // myBus.sendMessage(242, 0, 0); 
    delay(160);
    for (int i=0; i<elementData.size(); i++) {
      if (elementData.get(i).getStateDisplay()) {
        myBus.sendMessage(176+elementData.get(i).midiChannel-1, elementData.get(i).note, elementData.get(i).memoryPosition);
        delay(4);
        if (  elementData.get(i).modifiers == 0) {
          myBus.sendMessage(176+elementData.get(i).midiChannel-1, elementData.get(i).setExcursionControllMax, elementData.get(i).setExcursionControllMin);
        } else {
          myBus.sendMessage(176+elementData.get(i).midiChannel-1, elementData.get(i).setExcursionControllMax, elementData.get(i).modifiers);
        }
        delay(4);
        myBus.sendMessage(176+elementData.get(i).midiChannel-1, int(elementData.get(i).toggleMode), elementData.get(i).addressDMX);
        delay(4);
        myBus.sendMessage(176+elementData.get(i).midiChannel-1, int(elementData.get(i).keyBoard), int ( elementData.get(i).indexMidiType ));
        delay(160);
        break;
      }
    } 
    myBus.sendMessage(241, 0, 0);
  }
  //*************
  //send selected to second page
  //**************
  if (sendOnPageTwo.isPressed()) {
    myBus.sendMessage(241, 0, 0);
    delay(160);
    for (int i=0; i<elementData.size(); i++) {
      if (elementData.get(i).getStateDisplay()) {
        myBus.sendMessage(176+elementData.get(i).midiChannel-1, elementData.get(i).note, elementData.get(i).memoryPosition+64);
        delay(4);
        if (  elementData.get(i).modifiers == 0) {
          myBus.sendMessage(176+elementData.get(i).midiChannel-1, elementData.get(i).setExcursionControllMax, elementData.get(i).setExcursionControllMin);
        } else {
          myBus.sendMessage(176+elementData.get(i).midiChannel-1, elementData.get(i).setExcursionControllMax, elementData.get(i).modifiers);
        }
        delay(4);
        myBus.sendMessage(176+elementData.get(i).midiChannel-1, int(elementData.get(i).toggleMode), elementData.get(i).addressDMX);
        delay(4);
        myBus.sendMessage(176+elementData.get(i).midiChannel-1, int(elementData.get(i).keyBoard), int ( elementData.get(i).indexMidiType ));
        delay(160);
        break;
      }
    } 
    myBus.sendMessage(241, 0, 0);
    //println("exit");
    //}
  }
}
void sizeUIElement() {
  exit
    .setPosition(C[20]+15, R[8])
    .setSize((int)C[4], (int)R[3])
    ;
  sendFirstPage    
    .setPosition(C[27], R[8])
    .setSize((int)C[8], (int) R[3])
    ;
  sendSecondPage    
    .setPosition(C[36], R[8])
    .setSize((int)C[8], (int) R[3])
    ;
  sendOnPageOne    
    .setPosition(C[75], R[8])
    .setSize((int)C[8], (int)R[3])
    ;
  sendOnPageTwo    
    .setPosition(C[85], R[8])
    .setSize((int)C[8], (int) R[3])
    ;
  save    
    .setPosition(C[53], R[8])
    .setSize((int)C[4], (int)R[3])
    ;
  load    
    .setPosition(C[46], R[8])
    .setSize((int)C[4], (int)R[3])
    ;
  controlWindow    
    .setPosition(C[10], R[8])
    .setSize((int)C[8], (int) R[3])
    ;
}
// TO SET THE BUTTON POSITION
void setUIButtons() {
  controlWindow=control.addButton("Full Screen")
    .setId(3000)
    .setValue(0)
    .setView(new SisButton())
    ;
  exit = control.addButton("Exit")
    .setId(1000)
    .setValue(0)
    .setView(new SisButton())
    ;

  sendFirstPage = control.addButton("To 1st Page")
    .setId(1001)
    .setValue(0)
    .setView(new SisButton())
    ;

  sendSecondPage = control.addButton("To 2nd Page")
    .setId(1002)
    .setValue(0)
    .setView(new SisButton())
    ;

  sendOnPageOne = control.addButton("Send to One")
    .setId(1003)
    .setValue(0)
    .setView(new SisButton())
    ;

  sendOnPageTwo = control.addButton("Send to Two")
    .setId(1003)
    .setValue(0)
    .setView(new SisButton())
    ;

  save = control.addButton("Save")
    .setId(1004)
    .setValue(0)
    .setView(new SisButton())
    ;

  load = control.addButton("Load")
    .setId(1005)
    .setValue(0)
    .setView(new SisButton())
    ;
}