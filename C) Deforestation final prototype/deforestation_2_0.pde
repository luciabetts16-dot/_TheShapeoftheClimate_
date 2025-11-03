// --- CountryForest Class ---
// Represents a single country’s forest as a pulsing, floating circle.
// Each circle changes slightly in size and position to create a sense of movement.
// Original code by [Your Name], 2025.

class CountryForest {
  float x, y;           // Current position on screen
  float sizeFactor;     // Current circle size
  float targetSize;     // Target size used for smooth pulsing
  color displayColour;  // Colour used to represent forest gain or loss
  float angleOffset;    // Phase offset for unique motion per circle
  float speedFactor;    // Controls the speed of the pulsing and movement
  float baseX, baseY;   // Original centre position for floating motion
  
  CountryForest(float x_, float y_, float size_, color c) {
    // Constructor assigns initial values when each forest is created
    baseX = x_;
    baseY = y_;
    x = x_;
    y = y_;
    sizeFactor = size_;
    targetSize = size_;
    displayColour = c;
    angleOffset = random(TWO_PI);
    speedFactor = random(0.01, 0.03);
    // Randomised phase and speed inspired by procedural motion techniques
    // in Madecraft (2024), Ch.6 on iterative animation
  }
  
  void update() {
    // Creates a smooth pulsing effect using a sine wave
    float pulse = sin(frameCount * speedFactor + angleOffset) * targetSize * 0.3;
    sizeFactor = targetSize + pulse;
    // Pulsing effect conceptually influenced by Vera Molnar’s generative motion studies
    // (GUILLERMET, 2020, p.22)
    
    // Adds gentle floating motion to make circles drift slightly
    x = baseX + sin(frameCount * speedFactor + angleOffset) * 20;
    y = baseY + cos(frameCount * speedFactor + angleOffset) * 20;
    // Floating motion inspired by organic variability techniques in algorithmic animation
    // (Madecraft, 2024)
  }
  
  void display() {
    // Draws each circle with its current size, position, and colour
    noStroke();
    fill(displayColour, 200);
    ellipse(x, y, sizeFactor, sizeFactor);
    // Layering and colour opacity inspired by computational aesthetics in Molnar (GUILLERMET, 2020, p.16)
  }
}


// --- Global Variables ---
// Declares an array of CountryForest objects and sets how many there are
CountryForest[] forests;
int numForests = 30;


void setup() {
  size(1000, 700);
  // Sets the canvas size to 1000 by 700 pixels
  
  forests = new CountryForest[numForests];
  // Creates an empty array to hold all forest circles
  
  // Randomly positions circles around the centre of the canvas
  for (int i = 0; i < numForests; i++) {
    float angle = random(TWO_PI);
    float radius = random(50, 300);
    float px = width / 2 + cos(angle) * radius;
    float py = height / 2 + sin(angle) * radius;
    float sz = random(30, 120);
    
    // Assigns red/orange for forest loss, green for forest gain
    color c;
    if (random(1) < 0.7) { // Majority losing forest coverage
      c = color(255, random(100, 200), 0);  // Red/orange for loss
    } else {
      c = color(0, random(150, 255), 0);    // Green for gain
    }
    
    // Creates each CountryForest object and stores it in the array
    forests[i] = new CountryForest(px, py, sz, c);
  }
  
  frameRate(30);
  // Limits the animation to 30 frames per second for smooth motion
  // Frame rate control learned from Sweigart (2025), Ch.1 on animation timing
}


void draw() {
  background(255);
  // White background to enhance colour contrast
  
  // Updates and displays each forest circle on screen
  for (int i = 0; i < numForests; i++) {
    forests[i].update();
    forests[i].display();
  }
}
