//1. Class Definition with Getter and Setter
class MyClass {
  
  int _aProperty = 0;
  
  // Getter to access the value of _aProperty
  int get aProperty => _aProperty;
  
  // Setter to modify the value of _aProperty, with validation
  set aProperty(int value) {
    if (value >= 0) {
      _aProperty = value;
    }
  }
}

void main() {
  // Create an instance of MyClass
  MyClass myObject = MyClass();
  
  // Set a value using the setter
  myObject.aProperty = 10;
  
  // Print the current value using the getter
  print(myObject.aProperty);  // Output: 10
  
  // Try setting a negative value
  myObject.aProperty = -5;
  
  // Print the value again (it should still be 10 because -5 is invalid)
  print(myObject.aProperty);  // Output: 10
}





//2. Function to Sum Three Integers
int sumUp(int a, int b, int c) {
  return a + b + c;
}

void main() {
  // Calling the sumUp function with 1, 2, and 3
  int total = sumUp(1, 2, 3);

  // Printing the result
  print(total);  // Output: 6
}



//3. Function to Print Full Name with Optional Middle Name
void printName(
  String firstName, String lastName, 
  {String? middleName}) {
  print('$firstName ${middleName ?? ''} $lastName');
}

void main() {
  // Calling the function without middleName
  printName('Dash', 'Dartisan');

  // Calling the function with middleName
  printName('John', 'Smith', middleName: 'Who');

  // Named parameters must follow positional ones
  printName('John', 'Smith', middleName: 'Who');  // Correct usage
}




//4. Automobile Class with Different Constructors
class Automobile {
  String make; // The manufacturer of the automobile
  String model; // The model of the automobile
  int mpg; // Miles per gallon

  // Main constructor of the class
  Automobile(this.make, this.model, this.mpg);

  // Named constructor that delegates to the main constructor
  Automobile.hybrid(String make, String model) : this(make, model, 60);

  // Named constructor that delegates to the "hybrid" constructor
  Automobile.fancyHybrid() : this.hybrid('Futurecar', 'Mark V');
}

void main() {
  // Create a car using the main constructor
  Automobile car1 = Automobile('Toyota', 'Corolla', 30);
  print('${car1.make} ${car1.model} with ${car1.mpg} mpg');  // Output: Toyota Corolla with 30 mpg

  // Create a car using the 'hybrid' constructor
  Automobile car2 = Automobile.hybrid('Honda', 'Civic');
  print('${car2.make} ${car2.model} with ${car2.mpg} mpg');  // Output: Honda Civic with 60 mpg

  // Create a car using the 'fancyHybrid' constructor
  Automobile car3 = Automobile.fancyHybrid();
  print('${car3.make} ${car3.model} with ${car3.mpg} mpg');  // Output: Futurecar Mark V with 60 mpg
}



//5. Defining and Printing Maps
void main() {
  // Defining a map with String keys and values
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  // Defining a map with integer keys and String values
  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Print the maps
  print(gifts);        // Output: {first: partridge, second: turtledoves, fifth: golden rings}
  print(nobleGases);   // Output: {2: helium, 10: neon, 18: argon}
}



//6. Defining and Printing Maps
void main() {
  // Defining a map with String keys and values
  var gifts = {
    // Key: Value pairs
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  // Defining a map with integer keys and String values
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // Print the maps
  print(gifts);        // Output: {first: partridge, second: turtledoves, fifth: golden rings}
  print(nobleGases);   // Output: {2: helium, 10: neon, 18: argon}
}

