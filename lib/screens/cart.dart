import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/controllers/catalogue_controller.dart';
import 'package:loginapp/models/product.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  CatalogueController catalogueC = Get.put(CatalogueController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => catalogueC.cartItems.isEmpty
          ? const Center(
              child: Text("No items in the cart yet!"),
            )
          : Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: catalogueC.cartItems.length,
                  itemBuilder: (context, index) {
                    Product currentProduct = catalogueC.cartItems[index];
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
                      trailing: IconButton(
                          onPressed: () {
                            catalogueC.removeFromCart(index);
                            // print(catalogueC.cartItems);
                          },
                          icon: const Icon(Icons.remove)),
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    double totalWooliesPrice = 0;
                    double totalColesPrice = 0;

                    for (var product in catalogueC.cartItems) {
                      totalWooliesPrice += product.priceWollies;
                      totalColesPrice += product.priceColes;
                    }

                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Comparison Results"),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                  "Total Woolies Price: \$${totalWooliesPrice.toStringAsFixed(2)}"),
                              Text(
                                  "Total Coles Price: \$${totalColesPrice.toStringAsFixed(2)}"),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text("Compare"),
                )
              ],
            ),
    );
  }
}
