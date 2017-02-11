import java.util.Random;

Random r = new Random();
Bar bars[] = new Bar[20];
int x = 1;

void setup()
{
  size(600,600);
  for(int i = 0;i<bars.length;i++)
    bars[i] = new Bar((r.nextInt((400-10)+1)+10));
}

void draw()
{
  frameRate(10);
  background(20,20,30,100);
  for(int i = 0;i<bars.length;i++){
    stroke(255,255,255,255);
    if(x == i){
       fill(21,101,192,1000);
    }else{
       fill(33,150,243,1000);
    }
     rect((i*20)+100,525,20,-bars[i].barHeight);
  } 
  sortOne(bars,x);
  if(x<bars.length-1){
    x++;
  }     
}

void sortOne(Bar b[],int i){
     int key;
     for(int g = i;g>0;g--){
       if(bars[g].barHeight<bars[g-1].barHeight){
          key = b[g-1].barHeight;
          bars[g-1].barHeight = bars[g].barHeight;
          bars[g].barHeight = key;
       }
    }
 }