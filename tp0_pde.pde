PImage img;
void setup(){
size(800,400);
background(130);
strokeWeight(2);
img= loadImage("tipos-de-limas.jpg");
}
void draw(){
println("Yo soy el Draw");
img= loadImage("tipos-de-limas.jpg");
img.resize(400,400);
image(img,400,0);
println(mouseX,mouseY);
fill(150);
quad(260,169,239,139,35,343,53,382);
fill(255,102,0);
quad(349,16,369,38,263,172,237,132);
fill(255,102,0);
stroke(0);
circle(346,39,45);
fill(0);
beginShape();
fill(0);
vertex(367,52);
bezier(308,117,369,39,365,53,348,81);
endShape();
triangle(321,35,323,42,302,63);
triangle(274,118,237,132,263,170);
triangle(356,74,367,49,356,58);
line(315,110,354,77);
}
