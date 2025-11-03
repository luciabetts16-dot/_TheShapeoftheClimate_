// Sea Level Rise Visualisation
// Represents the gradual rise of sea levels over time through animated colour and form.

float seaLevel = 0;  
// Stores the current vertical position of the water’s surface

int year = 1900;  
// Tracks the simulated time progression from 1900 to 2020


void setup() {
  size(800, 600);
  // Sets the canvas size

  noStroke();
  // Removes outlines for a smoother aesthetic, influenced by the clean visual simplicity
  // noted in Molnar’s algorithmic compositions (GUILLERMET, A., 2020, *Vera Molnar’s Computer Paintings*, p. 12–13).
}


void draw() {
  background(10, 20, 40);
  // Deep blue background representing oceanic space

  seaLevel = map(year, 1900, 2020, height * 0.75, height * 0.25);
  // Maps the year to the vertical sea level; use of mapping functions learned
  // from Sweigart (2025), *Automate the Boring Stuff with Python*, Ch. 1, to apply
  // variable remapping concepts in Processing.
 // Data source: adapted from NOAA PSL “Global Sea Level (NASA/JPL)” monthly timeseries (https://psl.noaa.gov/data/timeseries/month/SEALEVEL/, accessed October 2025)

  float t = map(year, 1900, 2020, 0, 1);
  // Normalises year progression for smooth transitions

  float r = lerp(0, 255, t * 0.5);
  float g = lerp(80, 200, t);
  float b = lerp(180, 80, t);
  // Gradual colour interpolation approach reflects Molnar’s theory of computational colour
  // progression in abstract systems (GUILLERMET, 2020, p. 16).

  for (float y = seaLevel; y < height + 20; y += 10) {
    fill(r, g, b, 150);
    beginShape();
    for (float x = 0; x <= width; x += 10) {
      float yOffset = sin((x * 0.03) + millis() * 0.002 + y * 0.05) * 10;
      vertex(x, y + yOffset);
    }
    vertex(width, height);
    vertex(0, height);
    endShape(CLOSE);
    // The layered repetition of waves visually references Molnar’s generative layering,
    // where algorithmic repetition yields organic rhythm (GUILLERMET, 2020, p. 22).
  }

  fill(255);
  textAlign(CENTER);
  textSize(24);
  text("Sea Level Rise — " + year, width / 2, 40);
  // Text display placement and structure informed by layout clarity principles in
  // Matthes (2023), *Python Crash Course*, Ch. 3 on output formatting.

  if (frameCount % 10 == 0 && year < 2020) {
    year++;
    // Loop timing structure adapted from examples in Madecraft (2024), *Python for Students*,
    // which reinforced the idea of frame-based control in animation logic.
  }
}
