// 定数
final int[] fishToLeft  = new int[] {    // 魚の形状 (左向き)
  0, 0, 70, 30, // 胴体の相対位置(x,y)・横幅・縦幅
  38, 0, 15, 25                          // 尾びれの相対位置(x,y)・横幅・縦幅
};
final int[] fishToRight = new int[] {    // 魚の形状 (右向き)
  0, 0, 70, 30, 
  -38, 0, 15, 25
};
final int[] x = new int[]{
  100, 250, 400, 550
};                                      // 魚の中心の x座標
final int[] y = new int[]{
  200, 250, 300, 350
};                                     // 魚の中心の y座標
final int[] vx = new int[]{
  1, 2, 3, 4
};                                     // 魚の進む速さ
final int[] vy = new int[]{
  1, 2, 3, 4
};                                     // 魚の進む速さ
final int bodyX = 0;
final int bodyY = 1;
final int bodyLength = 2;
final int bodyWidth =3;
final int finX = 4;
final int finY = 5;
final int finLength = 6;
final int finWidth = 7;

// 変数
int[] fish;                        // 現在の魚の形状

void setup() {
  size(400, 400);             // ウィンドウのサイズ
  noStroke();                 // 輪郭線を無効に
  background(63, 63, 255);    // 背景色
  fill(63, 31, 31);           // 塗る色

  // 変数の初期値

  fish = fishToRight;         // 変数 fish は 変数 fishToRight と同じ配列を参照
}

void draw() {
  background(63, 63, 255);
  fill(0, 0, 0, 90);
  for (int i = 0; i < 4; i++ ) {
    if (x[0] + fish[bodyX] < mouseX) {
      fish = fishToRight;
      x[0] = x[0]+ vx[0];
    } else if (x[0] + bodyX > mouseX) {
      fish = fishToLeft;
      x[0] = x[0] - vx[0];
    }

    if (y[0] + fish[bodyY] < mouseY) {
      y[0] = y[0] + vy[0]+5;
    } else if (y[0] + fish[bodyY] > mouseY) {
      y[0] = y[0] - vy[0]-5;
    }
    ellipse( x[0] +fish[bodyX], y[0]+fish[bodyY], fish[bodyLength], fish[bodyWidth]);
    ellipse( x[0] + fish[finX], y[0] + fish[finY], fish[finLength], fish[finWidth]); 
    // ここを考える
    if (x[1] + fish[bodyX] < mouseX) {
      fish = fishToRight;
      x[1] = x[1]+ vx[1];
    } else if (x[1] + bodyX > mouseX) {
      fish = fishToLeft;
      x[1] = x[1] - vx[1];
    }

    if (y[1] + fish[bodyY] < mouseY) {
      y[1] = y[1] + vy[1]-20;
    } else if (y[1] + fish[bodyY] > mouseY) {
      y[1] = y[1] - vy[1]-20;
    }
    ellipse( x[1] +fish[bodyX], y[1]+fish[bodyY] , fish[bodyLength], fish[bodyWidth]);
    ellipse( x[1] + fish[finX], y[1] + fish[finY], fish[finLength], fish[finWidth]); 

    if (x[2] + fish[bodyX] < mouseX) {
      fish = fishToRight;
      x[2] = x[2]+ vx[2];
    } else if (x[2] + bodyX > mouseX) {
      fish = fishToLeft;
      x[2] = x[2] - vx[2];
    }

    if (y[2] + fish[bodyY] < mouseY) {
      y[2] = y[2] + vy[2]+40;
    } else if (y[2] + fish[bodyY] > mouseY) {
      y[2] = y[2] - vy[2]-40;
    }
    ellipse( x[2] +fish[bodyX], y[2]+fish[bodyY], fish[bodyLength], fish[bodyWidth]);
    ellipse( x[2] + fish[finX], y[2] + fish[finY], fish[finLength], fish[finWidth]);

    if (x[3] + fish[bodyX] < mouseX) {
      fish = fishToRight;
      x[3] = x[3]+ vx[3];
    } else if (x[3] + bodyX > mouseX) {
      fish = fishToLeft;
      x[3] = x[3] - vx[3];
    }

    if (y[3] + fish[bodyY] < mouseY) {
      y[3] = y[3] + vy[3]+60;
    } else if (y[3] + fish[bodyY] > mouseY) {
      y[3] = y[3] - vy[3]-60;
    }
    ellipse( x[3] +fish[bodyX], y[3]+fish[bodyY], fish[bodyLength], fish[bodyWidth]);
    ellipse( x[3] + fish[finX], y[3] + fish[finY], fish[finLength], fish[finWidth]);
  }
}
