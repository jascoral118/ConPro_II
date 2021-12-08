size(400, 400);             // ウィンドウのサイズ
background(255, 255, 255);  // 背景色(白)
noStroke();                 // 輪郭線を無効に

int x = 30;                 // 円の中心の x座標の初期値
int y = 30;                // 円の中心の y座標
int dx = 30;                // 円の中心間の距離
int dy = 30; 
int d = 3;                  // 円の直径の初期値
int dd = 2;                 // 円の直径の増分
int n = 12;                 // 円の個数

fill(0, 0, 0);              // 塗る色 (黒)
for (int i = 0; i < n; i++) {
  for (int j =0; j < n; j++) {
    if (x == y) {
      fill(255, 0, 0);
    } else {
      fill(0, 0, 255);
    }
    ellipse(x, y, d, d);      // 楕円の中心のx,y座標、幅、高さ
    x = x + dx;
    d = d + dd;
  }
  x = 30;
  d = 3;
  y = y+dy;
}
