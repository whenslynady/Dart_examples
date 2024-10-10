// 1. Class Definition with Getter and Setter
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

// 2. Function to Sum Three Integers
int sumUp(int a, int b, int c) {
  return a + b + c;
}

// 3. Function to Print Full Name with Optional Middle Name
void printName(String firstName, String lastName, {String? middleName}) {
  print('$firstName ${middleName ?? ''} $lastName');
}

// 4. Automobile Class with Different Constructors
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
  // Example 1: Using MyClass with getter and setter
  MyClass myObject = MyClass();
  myObject.aProperty = 10;
  print(myObject.aProperty); // Output: 10
  myObject.aProperty = -5;
  print(myObject.aProperty); // Output: 10 (as -5 is invalid)

  print(''); // Space between results

  // Example 2: Sum up three numbers
  int total = sumUp(1, 2, 3);
  print(total); // Output: 6

  print(''); // Space between results

  // Example 3: Print name with optional middle name
  printName('Dash', 'Dartisan');
  printName('John', 'Smith', middleName: 'Who');
  
  print(''); // Space between results

  // Example 4: Create cars with different constructors
  Automobile car1 = Automobile('Toyota', 'Corolla', 30);
  print('${car1.make} ${car1.model} with ${car1.mpg} mpg'); // Output: Toyota Corolla with 30 mpg
  
  Automobile car2 = Automobile.hybrid('Honda', 'Civic');
  print('${car2.make} ${car2.model} with ${car2.mpg} mpg'); // Output: Honda Civic with 60 mpg
  
  Automobile car3 = Automobile.fancyHybrid();
  print('${car3.make} ${car3.model} with ${car3.mpg} mpg'); // Output: Futurecar Mark V with 60 mpg

  print(''); // Space between results

  // Example 5: Defining and Printing Maps (using the Map constructor)
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  print(gifts); // Output: {first: partridge, second: turtledoves, fifth: golden rings}

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  print(nobleGases); // Output: {2: helium, 10: neon, 18: argon}

  print(''); // Space between results

  // Example 6: Defining and Printing Maps (using map literal syntax)
  var giftsLiteral = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  print(giftsLiteral); // Output: {first: partridge, second: turtledoves, fifth: golden rings}

  var nobleGasesLiteral = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  print(nobleGasesLiteral); // Output: {2: helium, 10: neon, 18: argon}
}
