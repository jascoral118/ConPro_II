size(440, 400);             // ウィンドウのサイズ
background(255, 255, 255);  // 背景色(白)
noStroke();                 // 輪郭線を無効に
float average;

int x = 50;                 // 人の中心の x座標の初期値
int y = 300;                // 人の足元の y座標
int dx = 50;                // 人の中心線間の距離
int[] h;                    // 身長
int w = 20;                 // 体の幅
int d = 30;                 // 顔の直径
int sum = 0;

h = new int[] { 145, 186, 176, 168, 186, 156, 172 };  // 身長; 人数は7名

fill(0, 0, 0);                              // 塗る色 (黒)
for (int i = 0; i < h.length; i++) {
  sum = sum + h[i];
  ellipse(x, y - h[i], d, d);               // 頭
  rect(x - w / 2, y - h[i], w, h[i]);       // 胴体
  x = x + dx;
}

average = sum/h.length;
fill(197, 197, 0);
ellipse(x, y - average, d, d);
rect(x - w /2, y - average, w, average);
