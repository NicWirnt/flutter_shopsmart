import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  List<Product> products = [
    Product("A", "100", 'assets/images/veggies.png', "20"),
    Product("A", "100", 'assets/images/veggies.png', "20"),
    Product("A", "100", 'assets/images/veggies.png', "20"),
    Product("A", "100", 'assets/images/veggies.png', "20"),
    Product("A", "100", 'assets/images/veggies.png', "20"),
    Product("A", "100", 'assets/images/veggies.png', "20"),
    Product("A", "100", 'assets/images/veggies.png', "20"),
    Product("A", "100", 'assets/images/veggies.png', "20"),
    Product("A", "100", 'assets/images/veggies.png', "20"),
  ];

  List<String> menus = [
    "All",
    "Half Price",
    "Fruit & Veg",
    "Pantry",
    "Baby",
    "Bakery",
    "Beauty & Personal Care",
    "SNacks",
    "Stationary"
  ];

  List<String> topMenus = ["WoolWorths", "Coles", "Aldi", "IGA", "HarrisFarm"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: topMenus.map((curMenu) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      curMenu,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colors.white,
              child: Row(
                children: menus.map((curMenu) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      curMenu,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              Product currentProduct = products[index];
              return ListTile(
                leading: Image(image: AssetImage(currentProduct.path)),
                title: Text(currentProduct.title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${currentProduct.weight}gr"),
                    Text(currentProduct.price),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// Sample ordinal data type.
class Product {
  final String title;
  final String price;
  final String path;
  final String weight;

  Product(this.title, this.price, this.path, this.weight);
}
