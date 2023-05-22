import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_api_calling_example/shopping_app/controller/product_controller.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: const Text(
                    "Shop",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.view_list_rounded,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.ballot_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Obx(
                () => Visibility(
                  visible: productController.isLoading.value,
                  replacement: Center(child: CircularProgressIndicator(),),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1 / 1.61,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: productController.productList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Image.network(
                                productController.productList[index].imageLink ??
                                    ""),
                            Text(
                              productController.productList[index].name ?? "",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            Container(
                              margin: EdgeInsets.all(16),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(productController
                                            .productList[index].rating
                                            .toString() ??
                                        "",style: TextStyle(color: Colors.white),),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
