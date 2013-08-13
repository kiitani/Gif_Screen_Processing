import gifAnimation.*;
import java.io.*;

Gif[] loopingGif = new Gif[40];
int gifnum=1;
int filenum;
int currenttime=0;
int endflame;
boolean changeflag=false;
boolean t_start = true;

public void setup(){
  File directry = new File(dataPath(""));
  String[] fileArray=directry.list();
  filenum=fileArray.length;
  println(filenum);
  size(displayWidth,displayHeight);
  //size(640,480);
  imageMode(CENTER);
  for(int i=1;i<=filenum;i++){
    loopingGif[i] = new Gif(this,fileArray[i-1]);
    loopingGif[i].play();
    //loopingGif[i].ignoreRepeat();
  }
}
void loading(boolean flag){
  if(flag == true){
    changeflag=false;
    t_start=true;
    gifnum=(int)random(1,filenum);
  }else{
  }
}
void draw(){
   float w,h;
   background(25);
   loading(changeflag);
   if ( loopingGif[gifnum].width > loopingGif[gifnum].height ) {
      h = height;
      w = (float)loopingGif[gifnum].width * ((float)height/(float)loopingGif[gifnum].height);
    } 
    else {
      w = width;
      h = (float)loopingGif[gifnum].height * ((float)width/(float)loopingGif[gifnum].width);
    }
    timer();
    image(loopingGif[gifnum],width/2,height/2,w,h);
}

void timer(){
    if(t_start == true ){
      endflame=(int)random(1,30);
      t_start=false;
    }
    currenttime++;
    if(currenttime == endflame){
      changeflag=true;
      currenttime=0;
    }
    println(currenttime/60);
}
    
