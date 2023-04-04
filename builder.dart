abstract class CarBuilder {
  void setModel(String model);
  void setYear(int year);
  void setSunroof(bool hasSunroof);
  void setNavigation(bool hasNavigation);
  Car getResult();
}

class SedanBuilder extends CarBuilder {
  final Car _car = Car();

  @override
  void setModel(String model) {
    _car.model = model;
  }

  @override
  void setYear(int year) {
    _car.year = year;
  }

  @override
  void setSunroof(bool hasSunroof) {
    _car.hasSunroof = hasSunroof;
  }

  @override
  void setNavigation(bool hasNavigation) {
    _car.hasNavigation = hasNavigation;
  }

  @override
  Car getResult() {
    return _car;
  }
}

class Car {
  String model;
  int year;
  bool hasSunroof = false;
  bool hasNavigation = false;

  @override
  String toString() {
    final features = <String>[];
    if (hasSunroof) features.add('sunroof');
    if (hasNavigation) features.add('navigation');
    final featuresString = features.isNotEmpty
        ? 'with ${features.join(', ')}'
        : 'with no additional features';
    return 'Car: $model model, $year year, $featuresString.';
  }
}

class CarDirector {
  final CarBuilder _builder;

  CarDirector(this._builder);

  Car buildCar() {
    _builder.setModel('Toyota Camry');
    _builder.setYear(2022);
    _builder.setSunroof(true);
    _builder.setNavigation(true);
    return _builder.getResult();
  }
}

void main() {
  CarBuilder sedanBuilder = SedanBuilder();
  CarDirector director = CarDirector(sedanBuilder);
  Car car = director.buildCar();
  print(car);
}
