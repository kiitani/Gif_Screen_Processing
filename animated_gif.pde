import gifAnimation.*;
import java.io.*;

Gif[] loopingGif = new Gif[20];
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
  for(int i=1;i<filenum;i++){
    loopingGif[i] = new Gif(this,i+".gif");
    loopingGif[i].play();
    //loopingGif[i].ignoreRepeat();
  }
}
//void loading(boolean loadflag){
//  if(loadflag == false){
//    if(gifnum < filenum){
//      gifnum++;
//    }else{
//      gifnum=1;
//    }
//    loopingGif = new Gif(this,gifnum+".gif");
//    loopingGif.play();
//    loopingGif.ignoreRepeat();
//    loadflag_g=false;
//  }else{
//  }
//}
void draw(){
   float w,h,r;
   //loading(loopingGif.isPlaying());
   if ( loopingGif[gifnum].width > loopingGif[gifnum].height ) {
      h = height;
      w = (float)loopingGif[gifnum].width * ((float)height/(float)loopingGif[gifnum].height);
    } 
    else {
      w = width;
      h = (float)loopingGif[gifnum].height * ((float)width/(float)loopingGif[gifnum].width);
    }
   image(loopingGif[gifnum],width/2,height/2,w,h);
}
    
