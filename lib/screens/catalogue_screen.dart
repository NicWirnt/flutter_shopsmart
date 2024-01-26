import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/controllers/catalogue_controller.dart';

import '../models/product.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  CatalogueController catalogueC = Get.put(CatalogueController());

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
            itemCount: catalogueC.products.length,
            itemBuilder: (context, index) {
              Product currentProduct = catalogueC.products[index];
              return ListTile(
                leading: Image(image: AssetImage(currentProduct.path)),
                title: Text(currentProduct.title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${currentProduct.weight}gr"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Woolies \$${currentProduct.priceWollies}"),
                        const SizedBox(width: 4),
                        Text("Coles \$${currentProduct.priceColes}"),
                      ],
                    )
                  ],
                ),
                trailing: PopupMenuButton(
                  onSelected: (value) {
                    if (value == 1) {
                      catalogueC.addToCart(currentProduct);
                    } else if (value == 2) {
                      catalogueC.addToFavs(currentProduct);
                    }
                  },
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        value: 1,
                        child: Text("Add to List"),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text("Add to Favs"),
                      ),
                    ];
                  },
                ),

                //  IconButton(
                //     onPressed: () {
                //       catalogueC.addToCart(currentProduct);
                //       print(catalogueC.cartItems);
                //     },
                //     icon: const Icon(Icons.add)),
              );
            },
          ),
        ],
      ),
    );
  }
}
