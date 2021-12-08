size(400, 400);             // ウィンドウのサイズ
background(255, 255, 255);  // 背景色(白)
noStroke();                 // 輪郭線を無効に

int x = 30;                 // 円の中心の x座標の初期値
int y = 200;                // 円の中心の y座標
int dx = 30;                // 円の中心間の距離
int[] d;                    // 円の直径
int n = 12;                 // 円の個数
float[] h;               // 円の色相

d = new int[] { 30, 15, 40, 10, 25, 20, 10, 40, 5, 45, 10, 35 };
// 直径の指定

// 色相の値をあらかじめ乱数を使って生成し配列に格納
h = new float[n];
for (int i = 0; i < h.length; i++) {
  h[i] = random(0, 360);    // 0-360の範囲の乱数を発生
}

colorMode(HSB, 360, 100, 100);  // 色の指定をHSBに

for (int i = 0; i < n; i++) {
  fill(h[i], 100, 100);         // i番目の円を塗る色を取り出して指定
  ellipse(x, y + random(-20,20), d[i], d[i]);    // i番目の円の直径 d[i] を取り出す
  x = x + dx;
  
}
