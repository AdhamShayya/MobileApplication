class Rooms {
  double _price = 0;
  int _floor = 0;
  int _suite = 0;
  int _days = 0;
  int _foodService = 0;
  int suiteAmount = 0;
  int foodAmount = 0;
  int discount = 1;

  Rooms(int floor, int days, int food, int suite) {
    if (floor <= 0 || days <= 0) {
      throw Exception('negative values not allowed');
    }
    _days = days;
    _floor = floor;
    _foodService = food;
    _suite = suite;
  }

  set days(String days) {
    if (days.trim() == '') {
      _days = -1;
    } else {
      _days = int.parse(days);
    }
  }

  set floor(String floor) {
    if (floor.trim() == '') {
      _floor = -1;
    } else {
      _floor = int.parse(floor);
    }
  }

  @override
  String toString() {
    return """
  Your room Reservation Payments are as follows:
  Days: $_days days
  Floor: $_floor 
  FoodService: ${foodAmount * _days}\$
  price per day: ${getDayPrice()} \$
  Total: ${getTotalPrice()}\$ """;
  }

  double getTotalPrice() {
    suiteAmount = (_suite == 1) ? 200 : 100;
    foodAmount = (_foodService == 1) ? 50 : 0;
    double floorPrice = _floor * 5;
    int daysPrice = suiteAmount * _days;
    int foodPrice = foodAmount * _days;
    _price = floorPrice + daysPrice + foodPrice;
    return _price;
  }

  double getDayPrice() {
    suiteAmount = (_suite == 1) ? 200 : 100;
    foodAmount = (_foodService == 1) ? 50 : 0;
    double floorPrice = _floor * 5;
    _price = floorPrice + foodAmount + suiteAmount;
    return _price;
  }
}
