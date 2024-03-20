// Distance between two podoubles of coordinate (x,y)
import 'dart:math' as math;

void main(List<String> args) {
  double x1 = 1;
  double y1 = 2;
  double x2 = 4;
  double y2 = 6;

  double distance = distanceBetweenPodoubles(x1, y1, x2, y2);
  print("Distance betwwen those podoubles is: $distance");

}

double distanceBetweenPodoubles(double x1, double y1, double x2, double y2){
  double dx = x2 - x1;
  double dy = y2 - y1;

  return math.sqrt(dx * dx + dy * dy);
}