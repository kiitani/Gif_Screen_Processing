import gifAnimation.*;

PImage[] animation;
Gif loopingGif;
int gifnum=1;
boolean loadflag_g=false;

public void setup(){
  size(screen.width,screen.height);
  //size(640,480);
  //frameRate(100);
  
  loopingGif = new Gif(this,"00"+gifnum+".gif");
  loopingGif.loop();
}
void loading(boolean loadflag){
  if(loadflag == true){
    loopingGif = new Gif(this,"00"+gifnum+".gif");
    loopingGif.loop();
    loadflag_g=false;
  }else{
  }
}
void draw(){
  loading(loadflag_g);
  image(loopingGif,0,0,width,height);
  println(gifnum);
}

void mousePressed(){
  switch(gifnum){
    case 1:
      gifnum=2;
      break;
    case 2:
      gifnum=1;
      break;
  }
  loadflag_g=true;
} 
    
