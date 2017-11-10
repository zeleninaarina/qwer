float ballX = 200;
float ballY = 100;
float speedX = 10;
float speedY = 0;
int hit = 0;
int miss = 0;
void setup() {
    size(600, 400);
    PImage img = loadImage("hhh.jpg");
    image(img, 0, 0, 600, 400);
}
void draw() {

    if (mousePressed) {
        hit = 0;
        miss = 0;
    }

    float paddle = 1000 / (hit + 10);
    if (ballX < 0 || ballX > width) speedX = -speedX;
    if (ballY > height) {
        speedY = -speedY;
        float distance = abs(mouseX - ballX);
        if (distance < paddle) hit += 1;
        else miss += 1;
    } else speedY += 1;

    ballX += speedX;
    ballY += speedY;

    background(100, 200, 50);
    fill(200, 100, 50);
    ellipse(ballX, ballY, 50, 50);
    fill(50, 100, 200);
    rect(mouseX - paddle, height - 10, 2 * paddle, 10);

    fill(0);
    text("hit: " + hit, 10, 20);
    text("miss: " + miss, 10, 40);
}
