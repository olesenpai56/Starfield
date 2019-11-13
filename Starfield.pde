Particle[] Ant;

void setup(){
	size(800,800);
	Ant = new Particle[20];
	for(int i = 0; i < Ant.length; i ++){
		Ant[i] = new NormalParticle();
	} 
	Ant[15] = new OddballParticle(); 
	Ant[14] = new JumboParticle();
}
void draw(){
	background(255, 204, 0);
	for(int i = 0; i < Ant.length; i++){
		Ant[i].show();
		Ant[i].move();
	}
	textSize(25);
	text("Ants are gross and so are bugs Part II", 250,250);
}
void moussePressed(){
	redraw();
}

class NormalParticle implements Particle{
	double myX, myY, myAngle, mySpeed; 
	NormalParticle(){
		myAngle = Math.random()* 3 * Math.PI;
		mySpeed = Math.random()* 10;
		myX = 400;
		myY = 400;
	}
	void move(){
		myX = Math.cos(myAngle) * mySpeed + myX;
		myY = Math.sin(myAngle) * mySpeed + myY;
	}
	void show(){
		//fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		//rect((int)myX, (int)myY, 2,2);
		fill(0);
 		strokeWeight(3);
ellipse((float)myX,(float)myY,(float)25,(float)25);
ellipse((float)myX+25,(float)myY,(float)30,(float)30);
ellipse((float)myX-25,(float)myY,(float)30,(float)30);
line((float)myX,(float)myY-10,(float)myX+5,(float)myY-25);
line((float)myX+5,(float)myY-25,(float)myX-25,(float)myY-30);

line((float)myX+5,(float)myY-5,(float)myX+20,(float)myY-30);
line((float)myX+20,(float)myY-30,(float)myX+30,(float)myY-30);

line((float)myX+5,(float)myY+5,(float)myX+20,(float)myY+30);
line((float)myX+20,(float)myY+30,(float)myX+30,(float)myY+30);

line((float)myX,(float)myY+10,(float)myX+5,(float)myY+25);
line((float)myX+5,(float)myY+25,(float)myX-25,(float)myY+30);

line((float)myX-25,(float)myY+15,(float)myX-35,(float)myY+25);
line((float)myX-35,(float)myY+25,(float)myX-55,(float)myY+25);

line((float)myX-25,(float)myY-15,(float)myX-35,(float)myY-25);
line((float)myX-35,(float)myY-25,(float)myX-55,(float)myY-25);

line((float)myX+30,(float)myY-5,(float)myX+50,(float)myY-20);
line((float)myX+30,(float)myY,(float)myX+50,(float)myY+15);

	}
}
interface Particle{
	public void show();
	public void move();
}
class OddballParticle implements Particle{
	int mySize, myX, myY;
	OddballParticle(){
		mySize = 30;
		myX = 400;
		myY = 400;
	}
	void move(){
		myX = (int)(Math.random()* 20) - myX;
		myY++;
	}
	void show(){
		fill(0);
		ellipse(myX,myY, mySize,mySize+20);
		ellipse(myX,myY-40,mySize,mySize);
		line(myX+20, myY-20,myX+10,myY);
		line(myX-20, myY-20,myX+10,myY);
		line(myX+20,myY+20,myX+10,myY);
		line(myX-20, myY+20,myX+10,myY);
		line(myX,myY-50,myX-10,myY-60);
		line(myX+10,myY-50,myX+20,myY-60);
	}
}

class JumboParticle extends NormalParticle{
	void show() {
		fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
		ellipse((int)myX, (int)myY, 40, 40);
	}
}

