class Car {
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double milesDriven = 0;

  Car(
      {required this.brand,
        required this.model,
        required this.year,}) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;

  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }

}


void main() {
  Car carOne = Car(brand:'Toyota', model:'Camry', year: 2020 );
  Car carTwo = Car(brand: "Honda", model: "Civic", year: 2018);
  Car carThree = Car(brand: "Ford", model: "F-150", year: 2015);

  carOne.drive(10000);
  carTwo.drive(8000);
  carThree.drive(15000);

  print("Car 1: ${carOne.getBrand()} ${carOne.getModel()} ${carOne.getYear()} Miles: ${carOne.getMilesDriven()} Age: ${carOne.getAge()}");
  print("Car 2: ${carTwo.getBrand()} ${carTwo.getModel()} ${carTwo.getYear()} Miles: ${carTwo.getMilesDriven()} Age: ${carTwo.getAge()}");
  print("Car 3: ${carThree.getBrand()} ${carThree.getModel()} ${carThree.getYear()} Miles: ${carThree.getMilesDriven()} Age: ${carThree.getAge()}");
  print("Total number of cars created: ${Car.numberOfCars}");
}