// Function returning bool indicating the raduis of two circles intersects
import 'dart:math' as math;

void main(List<String> args) {
  double x1 = 1;
  double y1 =  2;
  double r1 = 5;
  double x2 = 4;
  double y2 = 6;
  double r2 = 4;

  bool result = circleIntersection(x1, y1, r1, x2, y2, r2);
  print(result);
}

bool circleIntersection(double x1, double y1, double r1, double x2, double y2, double r2){

  double distance = math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

  return distance < r1 + r2;
}