import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/controllers/catalogue_controller.dart';

import '../models/product.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  CatalogueController catalogueC = Get.put(CatalogueController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => catalogueC.favsItems.isEmpty
          ? const Center(
              child: Text("No items in the favourite yet!"),
            )
          : ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: catalogueC.favsItems.length,
              itemBuilder: (context, index) {
                Product currentProduct = catalogueC.favsItems[index];
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
                          Text(currentProduct.priceWollies.toString()),
                          Text(currentProduct.priceColes.toString()),
                        ],
                      )
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        catalogueC.removeToFavs(index);
                        // print(catalogueC.favsItems);
                      },
                      icon: const Icon(Icons.remove)),
                );
              },
            ),
    );
  }
}
