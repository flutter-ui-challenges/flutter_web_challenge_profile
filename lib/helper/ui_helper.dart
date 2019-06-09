import 'dart:core';

/// ui standard
final standardWidth = 1400.0;
final standardHeight = 900.0;
int index = 0;
/// late init
double screenWidth;
double screenHeight;

/// scale [height] by [standardHeight]
double realH(double height) {
  assert(screenHeight != 0.0);
  return height / standardHeight * screenHeight;
}

// scale [width] by [ standardWidth ]
double realW(double width) {
  assert(screenWidth != 0.0);
  return width / standardWidth * screenWidth;
}
