class CatalogProduct {
  static CatalogProduct _instance;

  CatalogProduct._();

  factory CatalogProduct.getInstance() {
    if (_instance == null) {
      _instance = CatalogProduct._();
    }
    return _instance;
  }

  List<String> _products = [];

  void addProduct(String product) {
    _products.add(product);
    print("Added $product to catalog");
  }

  void removeProduct(String product) {
    _products.remove(product);
    print("Removed $product from catalog");
  }

  void displayProducts() {
    if (_products.isEmpty) {
      print("Catalog is empty");
    } else {
      print("Catalog Products:");
      for (var product in _products) {
        print("- $product");
      }
    }
  }
}

void main() {
  var catalogProduct1 = CatalogProduct.getInstance();
  var catalogProduct2 = CatalogProduct.getInstance();
  catalogProduct1.addProduct('Tamato');
  catalogProduct2.addProduct('Cucumber');
  catalogProduct2.displayProducts();
  /* const addProductOption = '1';
  const removeProductOption = '2';
  const displayProductsOption = '3';
  const exitOption = '4';

  var option;
  do {
    
    print('\nMenu:');
    print('  1. Add Product');
    print('  2. Remove Product');
    print('  3. Display Products');
    print('  4. Exit');
    stdout.write('Select an option: ');

    
    option = stdin.readLineSync().trim();

   
    switch (option) {
      case addProductOption:
        stdout.write('Enter product name: ');
        var product = stdin.readLineSync().trim();
        catalogProduct.addProduct(product);
        break;

      case removeProductOption:
        stdout.write('Enter product name: ');
        var product = stdin.readLineSync().trim();
        catalogProduct.removeProduct(product);
        break;

      case displayProductsOption:
        catalogProduct.displayProducts();
        break;

      case exitOption:
        print('Goodbye!');
        break;

      default:
        print('Invalid option. Please try again.');
    }
  } while (option != exitOption);*/
}
