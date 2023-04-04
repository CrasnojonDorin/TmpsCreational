abstract class CocaColaFactory {
  Drink createDrink();
  Snack createSnack();
}

class CocaColaProductsFactory implements CocaColaFactory {
  @override
  Drink createDrink() {
    return CocaCola();
  }

  @override
  Snack createSnack() {
    return Doritos();
  }
}

class FantaProductsFactory implements CocaColaFactory {
  @override
  Drink createDrink() {
    return Fanta();
  }

  @override
  Snack createSnack() {
    return Lays();
  }
}

class SpriteProductsFactory implements CocaColaFactory {
  @override
  Drink createDrink() {
    return Sprite();
  }

  @override
  Snack createSnack() {
    return Fritos();
  }
}

abstract class Drink {
  String getName();
}

abstract class Snack {
  String getName();
}

class CocaCola implements Drink {
  @override
  String getName() {
    return 'Coca-Cola';
  }
}

class Sprite implements Drink {
  @override
  String getName() {
    return 'Sprite';
  }
}

class Fanta implements Drink {
  @override
  String getName() {
    return 'Fanta';
  }
}

class Doritos implements Snack {
  @override
  String getName() {
    return 'Doritos';
  }
}

class Fritos implements Snack {
  @override
  String getName() {
    return 'Fritos';
  }
}

class Lays implements Snack {
  String getName() {
    return 'Lays';
  }
}

void main() {
  CocaColaFactory factory = CocaColaProductsFactory();

  Drink drink = factory.createDrink();
  Snack snack = factory.createSnack();

  print('Drink: ${drink.getName()}');
  print('Snack: ${snack.getName()}');

  factory = SpriteProductsFactory();

  drink = factory.createDrink();
  snack = factory.createSnack();

  print('Drink: ${drink.getName()}');
  print('Snack: ${snack.getName()}');
  factory = FantaProductsFactory();
  drink = factory.createDrink();
  snack = factory.createSnack();
  print('Drink: ${drink.getName()}');
  print('Snack: ${snack.getName()}');
}
