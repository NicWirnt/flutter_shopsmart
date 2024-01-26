import 'package:get/get.dart';

import '../models/product.dart';

class CatalogueController extends GetxController {
  var products = [
    Product("carrots", 20, 10, 'assets/images/veggies.png', "20"),
    Product("crackers", 15, 10, 'assets/images/crackers.jpg', "15"),
    Product("oero", 5, 4, 'assets/images/oreo.jpg', "10"),
    Product("Smitsh", 4, 3, 'assets/images/chips.jpg', "5"),
    Product("A", 3, 2, 'assets/images/ginger.png', "100"),
    // Product("A", "100", 'assets/images/veggies.png', "20"),
    // Product("A", "100", 'assets/images/veggies.png', "20"),
    // Product("A", "100", 'assets/images/veggies.png', "20"),
    // Product("A", "100", 'assets/images/veggies.png', "20"),
  ].obs;
  var cartItems = [].obs;
  var favsItems = [].obs;

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void removeFromCart(int index) {
    cartItems.removeAt(index);
  }

  void addToFavs(Product product) {
    favsItems.add(product);
  }

  void removeToFavs(int index) {
    favsItems.removeAt(index);
  }
}
