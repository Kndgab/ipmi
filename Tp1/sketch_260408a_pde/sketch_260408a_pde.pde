PImage img;

void setup() {
  size(800, 400);
  img = loadImage("cf7c1c740763c75a5087d829a18aa328.jpg"); 
  noStroke();
}

void draw() {
  background(#908A8A);

  image(img, 0, 0, 400, 400);

  // cuello y cuerpo
  fill(#767171);
  beginShape();
  vertex(485, 197);
  vertex(500, 195);
  vertex(673, 243);
  vertex(700, 329);
  vertex(800, 335);
  vertex(800, 400);
  vertex(400, 400);
  vertex(500, 344);
  endShape(CLOSE);
  
    // pelo
  fill(#E8DCDC);
  beginShape();
  vertex(582, 108);
  vertex(587, 103);
  vertex(608, 92);
  vertex(641, 95);
  vertex(675, 101);
  vertex(697, 101);
  vertex(720, 77);
  vertex(721, 77);
  vertex(707, 54);
  vertex(685, 44);
  vertex(588, 33);
  vertex(530, 48);
  vertex(483, 65);
  vertex(443, 94);
  vertex(414, 140);
  vertex(443, 212);
  vertex(491, 268);
  endShape(CLOSE);

  // cabeza
  fill(#AFA6A6);
  beginShape();
  vertex(501, 192);
  vertex(497, 209);
  vertex(504, 223);
  vertex(641, 241);
  vertex(664, 245);
  vertex(681, 246);
  vertex(679, 249);
  vertex(695, 231);
  vertex(700, 226);
  vertex(704, 210);
  vertex(710, 206);
  vertex(713, 192);
  vertex(711, 179);
  vertex(705, 159);
  vertex(707, 151);
  vertex(709, 141);
  vertex(709, 134);
  vertex(706, 125);
  vertex(699, 102);
  vertex(609, 90);
  vertex(580, 108);
  vertex(533, 121);
  vertex(493, 158);
  endShape(CLOSE);

  // oreja
  fill(#C1BBBB);
  beginShape();
  vertex(492, 156);
  vertex(475, 147);
  vertex(451, 155);
  vertex(447, 172);
  vertex(450, 186);
  vertex(463, 201);
  vertex(482, 202);
  vertex(483, 205);
  vertex(500, 204);
  endShape(CLOSE);

 // mano
  fill(#D8D0D0);
  beginShape();
vertex(795, 398);
vertex(788, 388);
vertex(769, 379);
vertex(743, 373);
vertex(715, 360);
vertex(694, 348);
vertex(691, 332);
vertex(687, 322);
vertex(686, 314);
vertex(692, 307);
vertex(683, 302);
vertex(678, 291);
vertex(681, 285);
vertex(689, 281);
vertex(673, 273);
vertex(661, 264);
vertex(666, 255);
vertex(676, 251);
vertex(692, 256);
vertex(705, 257);
vertex(716, 262);
vertex(696, 250);
vertex(702, 242);
vertex(708, 242);
vertex(722, 242);
vertex(734, 248);
vertex(750, 256);
vertex(759, 262);
vertex(772, 279);
vertex(784, 288);
vertex(797, 290);
vertex(798, 397);
endShape(CLOSE);

  
  endShape(CLOSE);
    // ojo izquierdo
  fill(#D8D0D0);
  beginShape();
vertex(575, 146);
vertex(599, 141);
vertex(615, 139);
vertex(626, 152);
vertex(608, 152);
vertex(588, 149);
vertex(569, 150);
ellipse(610, 145, 10, 10);
endShape(CLOSE);
  //nariz
  fill(#989090);
  beginShape();
  vertex(650, 135);
  vertex(670, 136);
  vertex(671, 152);
  vertex(674, 158);
  vertex(672, 167);
  vertex(678, 179);
  vertex(678, 187);
  vertex(666,193); 
  vertex(653,190);
  vertex(634,191);
  vertex(632, 178);
  vertex(644, 173);
  endShape(CLOSE);
  //ojo derecho
  fill(#D8D0D0);
  beginShape();
  vertex(672, 152);
  vertex(684, 149);
  vertex(697, 152);
  vertex(698, 163);
  vertex(687, 161);
  vertex(673, 157);
  vertex(672, 152);
  endShape(CLOSE);
  //detalle ojos
  fill(#989090);
  beginShape();
    ellipse(610, 145, 10, 10);
    ellipse(695, 157, 10, 7);
  //detalles oreja
  beginShape();
  fill(#433737);
vertex(467, 177);
vertex(465, 182);
vertex(479, 184);
vertex(485, 180);
vertex(483, 170);
   endShape(CLOSE);
   //boca
   fill(#EADFDF);
   beginShape();
   vertex(620, 208);
   vertex(637, 202);
   vertex(657,202);
   vertex(672,206);
   vertex(674, 219); 
   vertex(648, 217);
   vertex(624,212);
    endShape(CLOSE);
}
