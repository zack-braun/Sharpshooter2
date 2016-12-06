import processing.serial.*;
import ddf.minim.*;


AudioSnippet snip1,snip2,snip3,snip4,snip5,snip6,snip7,snip8;
Minim minim;

Serial myPort;  // The serial port

void setup() {
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[10], 9600);
  
    size(640, 360);
  background(255);
    

 minim = new Minim(this);
 snip1 = minim.loadSnippet("phasers.wav");
 snip2 = minim.loadSnippet("reload.wav");
 snip3 = minim.loadSnippet("buzzer.wav");
 snip4 = minim.loadSnippet("lowtime.wav");
 snip5 = minim.loadSnippet("gdi_warning.wav");
 snip6 = minim.loadSnippet("hittarget.wav");
 snip7 = minim.loadSnippet("fail-trombone-02.wav");
 snip8 = minim.loadSnippet("epic_sax_guy_onlysax.mp3"); 
 
    link("https://www.youtube.com/watch?v=2_z243ono4w"); 
}

void draw() {
  //rect(20, 20, 60, 60); 
  while (myPort.available() > 0) {
    int inbyte = myPort.read();
     println(inbyte);
      if(inbyte == 36){
        int inbyte2 = myPort.read();
        if(inbyte2 == 48){ //$0
            snip1.play();
            snip1.rewind();
         }else if(inbyte2 == 49){ //$1
           snip2.play();
           snip2.rewind();
         }else if(inbyte2 == 50){//$2
           snip5.play();
           snip5.rewind();
         }else if(inbyte2 == 51){//$3
           snip3.play();
           snip3.rewind();
         }else if(inbyte2 == 52){ //$4
           snip4.play();
           snip4.rewind();
         }else if(inbyte2 == 53){ //$5
           snip6.play();
           snip6.rewind();
         }else if(inbyte2 == 54){ //$6
           snip7.play();
           snip7.rewind();
         }else if(inbyte2 == 55){ //$7
           snip8.play();
           snip8.rewind();
         }
           
           
           
           
        //delay(5000);
      }  
  }
}

// 0: 