// 定数
final int[] fishToLeft  = new int[] {    // 魚の形状 (左向き)
  0, 0, 70, 30, // 胴体の相対位置(x,y)・横幅・縦幅
  38, 0, 15, 25                          // 尾びれの相対位置(x,y)・横幅・縦幅
};
final int[] fishToRight = new int[] {    // 魚の形状 (右向き)
  0, 0, 70, 30, 
  -38, 0, 15, 25
};
final int bodyX = 0;
final int bodyY = 1;
final int bodyLength = 2;
final int bodyWidth =3;
final int finX = 4;
final int finY = 5;
final int finLength = 6;
final int finWidth = 7;

// 変数
int x;                             // 魚の中心の x座標
int y;                             // 魚の中心の y座標
int vx;                            // 魚の進む速さ
int[] fish;                        // 現在の魚の形状

void setup() {
  size(400, 400);             // ウィンドウのサイズ
  noStroke();                 // 輪郭線を無効に
  background(63, 63, 255);    // 背景色
  fill(63, 31, 31);           // 塗る色

  // 変数の初期値
  x = 100;
  y = 200;
  vx = 1;
  fish = fishToRight;         // 変数 fish は 変数 fishToRight と同じ配列を参照
}

void draw() {
  background(63, 63, 255);
  ellipse(x +fish[bodyX], y+fish[bodyY], fish[bodyLength], fish[bodyWidth]);
  ellipse(x + fish[finX], y + fish[finY], fish[finLength], fish[finWidth]);
  if (x + fish[bodyX] < mouseX) {
    fish = fishToRight;
    x = x + vx;
  } else if (x + bodyX > mouseX) {
    fish = fishToLeft;
    x = x - vx;
  }

  // ここを考える
}
