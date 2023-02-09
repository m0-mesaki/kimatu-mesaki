float baseH = 60;
float armL1 = 30;


float armW1 = 10;


float angle0 = 0;
float angle1 = 0;
float angle3 = 0;
float angle4 = 0;
float angle5 = 0;
float angle6 = 0;
float dif = 1.0;

float angle1Direction = 1;
float speed = 0.005;

void setup(){
  size(1000, 1000, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'r'){
      angle0 = angle0 + dif;
    }
    if(key == 'l'){
      angle0 = angle0 - dif;
    }
    if(key == 'f'){
      angle1 = angle1 + dif;
    }
    if(key == 'F'){
      angle1 = angle1 - dif;
    }
  
  
     if(key == 'u'){
      angle3 = angle3 + dif;
    }
     if(key == 'd'){
      angle3 = angle3 - dif;
    }
    if(key == 'p'){
      angle4 = angle4 + dif;
    }
     if(key == 'P'){
      angle4 = angle4 - dif;
    }
     if(key == 'v'){
      angle5 = angle5 + dif;
    }
     if(key == 'V'){
      angle5 = angle5 - dif;
    }
     if(key == 'h'){
      angle6 = angle6 + dif;
    }
     if(key == 'H'){
      angle6 = angle6 - dif;
    }
     if(key == 's'){
       angle0 = 0;
      angle1 = 0;
      angle3 = 0;
      angle4 = 0;
      angle5 = 0;
      angle6 = 0;
    }
   
  }
  
  //胴体
  pushMatrix();
  translate(-50,0,0);
  rotateX(radians(angle0));
   if(angle0 > 15) angle0=15 ;
    if(angle0 < -15) angle0 = -15;
   rotateY(radians(angle3));
    if(angle3 > 15) angle3 = 15;
   if(angle3 < -15) angle3 = -15;
 
  fill(175);
  translate(50,0,0);
  box(100,10,baseH/6);
  pushMatrix();
   pushMatrix();
   pushMatrix();
    pushMatrix();
   pushMatrix();

  //左翼内側
  rotateX(radians(angle1));


angle1 += speed * angle1Direction;
if((angle1 > PI/12)||(angle1 < -PI/12)){
angle1Direction = - angle1Direction;
}

  translate(0,armL1/2,0);
  fill(150);
  box(armW1,armL1,armW1/3);
  
  //左翼外側
    translate(0,armL1/2,0);
  rotateX(radians(-3*angle1));  
  //go to center of 2nd joint
  translate(0,armL1/2,0);
  fill(125);
  box(armW1,armL1,armW1/3);
  
  //右翼内側
  popMatrix();
  rotateX(radians(-angle1));
 angle1 += speed * angle1Direction;
if((angle1 > PI/12)||(angle1 < -PI/12)){
angle1Direction = - angle1Direction;
}
  translate(0,-armL1/2,0);
  fill(150);
  box(armW1,-armL1,armW1/3);
 //右翼外側
  translate(0,-armL1/2,0);
  rotateX(radians(3*angle1));  
  //go to center of 2nd joint
  translate(0,-armL1/2,0);
  fill(125);
  box(armW1,-armL1,armW1/3);
  
  //左翼内側プロペラ
  popMatrix();
   rotateX(radians(angle1));
  if(angle1 > 15) angle1 = -15;
    if(angle1 < -15) angle1 = 15;
  translate(-armW1/2,armL1/2,0);
  rotateX(radians(10*angle4));
  fill(150);
  box(armW1/2,armL1/2,armW1/6);
  
  //左翼外側プロペラ
 popMatrix();
   rotateX(radians(angle1));
  if(angle1 > 15) angle1 = -15;
    if(angle1 < -15) angle1 = 15;
  translate(0,armL1,0);
  rotateX(radians(-3*angle1)
  );  
  //go to center of 2nd joint
  translate(-armW1/2,armL1/2,0);
  rotateX(radians(10*angle4));
  fill(150);
  box(armW1/2,armL1/2,armW1/6);
   
   //右翼内側プロペラ
  popMatrix();
   rotateX(radians(-angle1));
  if(angle1 > 15) angle1 = -15;
    if(angle1 < -15) angle1 = 15;
  translate(-armW1/2,-armL1/2,0);
  rotateX(radians(10*angle4));
  fill(150);
  box(armW1/2,armL1/2,armW1/6);
  
  //右翼外側プロペラ
 popMatrix();
   rotateX(radians(-angle1));
  if(angle1 > 15) angle1 = -15;
    if(angle1 < -15) angle1 = 15;
  translate(0,-armL1,0);
  rotateX(radians(3*angle1));  
  //go to center of 2nd joint
  translate(-armW1/2,-armL1/2,0);
  rotateX(radians(10*angle4));
  fill(150);
  box(armW1/2,armL1/2,armW1/6); 
 

  
//垂直尾翼
 popMatrix();
 translate(-50,0,0);
  rotateX(radians(angle0));
   if(angle0 > 15) angle0 = 15;
    if(angle0 < -15) angle0 = -15;
   rotateY(radians(angle3));
    if(angle3 > 15) angle3 = 15;
    if(angle3 < -15) angle3 = -15;
 
  fill(175);
  translate(100,0,15);
   rotateZ(radians(angle5));
  if(angle5 > 15) angle5 = 15;
    if(angle5 < -15) angle5 = -15;
  box(5,10,30);
 
 //水平尾翼
 translate(0,0,15);
  rotateY(radians(angle6));
  if(angle6 > 15) angle6 = 15;
    if(angle6 < -15) angle6 = -15;
  box(10,30,5); 
 
 
 
}
