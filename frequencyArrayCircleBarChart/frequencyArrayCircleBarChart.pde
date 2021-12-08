int fps = 24;        // フレーム数/秒(1フレームごとにサイコロを振る前提)
int dY = 60;         // 行の間隔
int dH = 20;         // 度数1当りの棒グラフの長さ
int w = 40;          // 棒の幅
int diceSides = 6;   // サイコロの面の数
int marginTop = 30;  // 上の余白
int marginLeft = 50; // 左の余白 (文字を除く)
int marginChar = 15; // 文字の左余白
int[] freq;   // サイコロの目ごとの回数を格納
int dy2 = 15;
int dx;

void setup () {
  size(640, 400);
  frameRate(fps);
  noStroke();
  background(255, 255, 255);
  colorMode(HSB, 360, 100, 100);
  freq = new int[diceSides];
}

void draw() {
  for (int i = 0; i < freq.length; i++) { // 行(サイコロの目)ごとの繰り返し
    int y = marginTop + i * dY;             // 棒の中心のy座標
    // 行ラベル
    fill(0, 0, 0);                          // 文字の色は黒
    textSize(16);
    text(i + 1, marginChar, y + w / 2);     // 棒の左に i + 1 を表示
    // 棒                      
    int dx = freq[i] * 20;
    if (marginLeft + dx + dH > width) {
      // 次が書けないほど右に来ているか? (width はウィンドウの幅)
      fill(0, 0, 0); // 色を黒に変更
      noLoop();  // draw() を呼び出す繰り返しは今回で終わり＝アニメーション終了
    } else {
      fill(360 * i / diceSides, 100, 100);  // 棒ごとに色相を変更
    }
    ellipse(marginLeft+dx, y+dy2, dH/2, dH/2);              // 棒の左上の座標、横、縦
  }
  int diceValue = (int)random(0, diceSides);
  // サイコロの目 [0 以上 (diceSides - 1) 以下の整数] 
  freq[diceValue]++;
  // 出たサイコロの目の頻度を1増やす
}
