# _TheShapeoftheClimate_
My project visualises climate data using abstract graphics to communicate the urgency of responding to climate change. Through iterative experimentation and coding in Processing, datasets from NASA, NOAA, and Our World in Data were transformed into visual prototypes exploring temperature anomalies, sea level rise, and deforestation rates.

Table of Contents

- General Info
- Coding Environment
- Functionality
- Setup
- Project Status
- Room for Improvement/Extension
- Acknowledgements


General Info

This project falls under the artistic and data-driven visualisation category. I aimed to create visuals that both unsettle and inform, encouraging viewers to take initiative in climate change action. Each prototype was designed to combine aesthetic abstraction with data representation:
- The first prototype visualises global temperature anomalies over time using curves and colour gradients
- The second simulates rising waves to represent sea level changes dynamically
- The third employs object-oriented programming to show deforestation and regrowth patterns per country

Coding Environment

Device: Laptop

Software: Processing (Java mode) - primary development environment

Libraries: Default Processing graphics functions

Resources Used:

Tutorials from The Dot is Black (2025), Moiré Pattern series, LinkedIn Learning Python for Students (2024), Matthes’ Python Crash Course (2023)

Functionality

_Global Temperature Anomalies_:
- CSV datasets were mapped to curves using curveVertex() for smooth interpolation
noise() added organic variation, and lerpColor() created gradients communicating temperature changes

_Sea Level Rise_:
- Years mapped to vertical positions to simulate rising waves using sin() and millis() for dynamic animation
Layered waves with colour interpolation depict environmental deterioration over time

_Deforestation_:
- Object-oriented approach representing each country as an object with update() and display() functions
sin() and cos() generate floating/pulsing effects, with colour coding for forest loss (reds/oranges) and regrowth (greens)

Peer feedback influenced colour hierarchy, layering, and spacing for improved interpretability
Emphasis on balancing aesthetic impact with accuracy, ensuring viewers understand the data while remaining visually engaged

Setup

1. Download and install Processing (Java mode) on your device
2. Open the prototype .pde files in Processing
3. Click the play button in the top-left corner of the Processing window to start the visualisations
No additional data preparation is required, the code automatically accesses the necessary datasets and generates the visuals

Project Status

Project is complete. All three prototypes are functional and communicate the intended climate data messages.

Potential ways to expand or improve the project:

- Add interactive features, such as sliders for time navigation or numeric overlays for precise measurement
- Conduct audience testing to evaluate comprehension and emotional engagement
- Experiment with alternative visual metaphors
- Include legends or tooltips to enhance clarity

Acknowledgements

- Vera Molnar’s computational aesthetics (Guillermet, 2020)
- Tutorials from The Dot is Black (2025) and Moiré Pattern YouTube series (Ep 14 & Ep 22)
- Matthes, S. (2023). Python Crash Course
- Bunn, D. (2021). Learn Python Visually
- Meyer, T. (2022). Programming 101
- The Net Ninja (2021) - YouTube tutorial on object-oriented Processing
- GeeksforGeeks (2025) - CSV to code guidance
- Peer and tutor feedback during in-class tutorials
