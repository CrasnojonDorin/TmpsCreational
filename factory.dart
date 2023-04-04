abstract class MobileFactory {
  Mobile factoryMethod();
}

class SamsungFactory implements MobileFactory {
  @override
  Mobile factoryMethod() {
    return SamsungMobile();
  }
}

class SonyFactory implements MobileFactory {
  @override
  Mobile factoryMethod() {
    return SonyMobile();
  }
}

abstract class Mobile {
  void use();
}

class SamsungMobile implements Mobile {
  @override
  void use() {
    print('Using Samsung mobile');
  }
}

class SonyMobile implements Mobile {
  @override
  void use() {
    print('Using Sony mobile');
  }
}

void main() {
  MobileFactory samsungFactory = SamsungFactory();
  Mobile samsung = samsungFactory.factoryMethod();
  samsung.use();

  MobileFactory sonyFactory = SonyFactory();
  Mobile sony = sonyFactory.factoryMethod();
  sony.use();
}
