import gifAnimation.*;
import java.io.*;

Gif loopingGif;
int gifnum=1;
int filenum;
boolean loadflag_g=false;

public void setup(){
  File directry = new File(dataPath(""));
  String[] fileArray=directry.list();
  filenum=fileArray.length;
  println(filenum);
  size(displayWidth,displayHeight);
  //size(640,480);
  imageMode(CENTER);
  loopingGif = new Gif(this,gifnum+".gif");
  loopingGif.play();
  loopingGif.ignoreRepeat();
}
void loading(boolean loadflag){
  if(loadflag == false){
    if(gifnum < filenum){
      gifnum++;
    }else{
      gifnum=1;
    }
    loopingGif = new Gif(this,gifnum+".gif");
    loopingGif.play();
    loopingGif.ignoreRepeat();
    loadflag_g=false;
  }else{
  }
}
void draw(){
   float w,h,r;
   loading(loopingGif.isPlaying());
   if ( loopingGif.width > loopingGif.height ) {
      h = height;
      w = (float)loopingGif.width * ((float)height/(float)loopingGif.height);
    } 
    else {
      w = width;
      h = (float)loopingGif.height * ((float)width/(float)loopingGif.width);
    }
   image(loopingGif,width/2,height/2,w,h);
}
    
