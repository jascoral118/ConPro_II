float r = 150;          // 円の半径
int theta;            // 回転角
int dTheta = 5;       // 回転角の増分/点
float rad;            // 回転角
int d = 8;            // 点の直径
float x, y;           // 点の中心座標
float cor = 0;
float c;

void setup() {
  size(400, 400);
  noStroke();
  background(255, 255, 255);
  fill(0, 0, 0);
  theta = 0;
  colorMode(HSB, 360, 100, 100);  // 色の指定をHSBに
  // (色相 0-360, 彩度 0-100, 明度 0-100)
}

void draw() {
  rad = radians(theta);
  c = (sin(radians(theta)/24)+1)/2;
  x = r * cos(rad) * c;
  y = -r * sin(rad) * c;
  fill(cor, 100, 100);
  //println("cor =" + cor);
  println("x=" + x);
  println("y=" + y);
  ellipse(x + width/2, y + height/2, d, d);   // 楕円の中心のx,y座標、幅、高さ
  theta = theta + dTheta;
  cor = 2 + cor;
  if (cor > 360) {
    cor = 0;
  }
}
