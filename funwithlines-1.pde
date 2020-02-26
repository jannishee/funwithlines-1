//this is a test branch

float rad;
float t,t2;
float mult;
boolean rec;
boolean stop;
int count;

void setup(){
  background(0);
  size(600,600);
  rad = 250;
  t = 0;
  t2 = 0;
  mult = 1;
  rec = false;
  stop = false;
  count=0;
}

void draw(){
  
  t+=PI/50;
  t2+=PI/300;
  
  float tSin = sin(t)*1;
  
  float tCos = sin(t)*1;
  
  translate(width/2,height/2);
  
  noStroke();
  fill(0,140);
  rect(-300,-300,600,600);
  
  float t2Sin = map(sin(t2),-1,1,1,10);
  float tSinS = map(sin(t),-1,1,0,0.5);
  float tSos = map(sin(t),-1,1,PI/2,PI/30);
  
  for(float i = 0; i < TWO_PI; i+=PI/50){
    float col = map(sin(i),-1,1,0,255);
    float col2 = map(cos(i),-1,1,0,255);
    
    stroke(col2,col,255-col2,255);
    strokeWeight(2);
    //stroke(col);
    rad = 250;
   
    
    line(sin(i*mult)*rad*tSin,cos(i*mult)*rad*-tSin,sin((i + 2)*1)*rad,cos((i + 2)*1)*rad); //sin(i)*rad/2,cos(i)*rad/2
    
  }
   if(t>=TWO_PI){
      print("lol");
      mult+=1;
      if(mult==4){
        mult=1;
        if(rec==true){stop=true;}
        rec=true;
        count=0;
      }
      t=0;
    }
  
  if(rec==true){
    //saveFrame("output/gif-"+nf(count,3)+".png");
  }
  if(stop==true){
    //exit();
  }
  count++;
}
