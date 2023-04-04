abstract class Water {
  Water clone();
}

class SparklingWater extends Water {
  String name;
  double volume;
  SparklingWater(this.name, this.volume);

  @override
  Water clone() {
    return SparklingWater(name, volume);
  }

  void sparkle() {
    print("$name is sparkling!");
  }
}

class StillWater extends Water {
  String name;
  double volume;
  StillWater(this.name, this.volume);

  @override
  Water clone() {
    return StillWater(name, volume);
  }

  void stir() {
    print("$name is still.");
  }
}

class WaterFactory {
  static Water createWater(Water water) {
    return water.clone();
  }
}

void main() {
  SparklingWater sparklingWater = SparklingWater("Coca-Cola", 500.0);

  SparklingWater newSparklingWater = WaterFactory.createWater(sparklingWater);

  StillWater stillWater = StillWater("Bucovina", 500.0);

  StillWater newStillWater = WaterFactory.createWater(stillWater);

  sparklingWater.sparkle();
  newSparklingWater.sparkle();

  stillWater.stir();
  newStillWater.stir();
}
