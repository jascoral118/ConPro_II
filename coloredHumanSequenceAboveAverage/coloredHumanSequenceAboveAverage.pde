size(400, 400);             // ウィンドウのサイズ
background(255, 255, 255);  // 背景色(白)
noStroke();                 // 輪郭線を無効に

int x = 50;                 // 人の中心の x座標の初期値
int y = 300;                // 人の足元の y座標
int dx = 50;                // 人の中心線間の距離
int[] h;                    // 身長
int w = 20;                 // 体の幅
int d = 30;                 // 顔の直径
int sum = 0;

h = new int[] { 145, 186, 176, 168, 186, 156, 172 };  // 身長; 人数は7名

// 平均の身長を求める
for (int i = 0; i < h.length; i ++) {
  sum = sum + h[i];
}
float average;
average = sum / h.length;

// 人の列を描く (身長が平均よりも高い人は色を変える)
for (int i =0; i < h.length; i ++) {
  if ( h[i] < average) {
    fill(0, 0, 0);
  } else {
    fill(192, 192, 0);
  }
    ellipse(x, y - h[i], d, d);               // 頭
    rect(x - w / 2, y - h[i], w, h[i]);       // 胴体
    x = x + dx;
  }
