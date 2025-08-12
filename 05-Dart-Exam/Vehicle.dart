// a)Create an abstract class Vehicle with:
// A protected variable _speed.
// An abstract method move().
// A non-abstract method setSpeed(int speed) to set the speed.
// b)Create a subclass Car that extends Vehicle:
// Implement the move() method to print "The car is moving at $_speed km/h".
// c)Use encapsulation to prevent direct access to _speed.
// d)In the main function, create an object of Car, set the speed, and call the move() method.

abstract class Vehicle {
  int _speed = 0;
  int get getSpeed => _speed;
  set setSpeed(int newSpeed) {
    if (newSpeed >= 0) {
      _speed = newSpeed;
    } else {
      print("Speed cannot be negative.");
    }
  }
  void move();
}

class Car extends Vehicle {
   @override
  void move() {
    print('The car is moving at $getSpeed km/h');
  }
}

void main(){
  var myCar = Car();
  myCar.setSpeed = 100;
  myCar.move();; // The car is moving at 100 km/h
}
