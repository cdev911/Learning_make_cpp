#include <iostream>

#include "Point.h"
#include "Rectangle.h"

int main(int argc, char const *argv[]) {

  std::cout<<"Hello world"<<std::endl;

  Point bottom_left = Point( 5, 2);
  Point top_right = Point(7,4);

  Rectangle rec = Rectangle(bottom_left, top_right);

  std::cout << "area of the Rectangle is " << rec.area() << '\n';
  std::cout << "perimeter of the Rectangle is " <<rec.perimeter() << '\n';
  return 0;
}
