import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_statemangement_example_four/controller/cart_controller.dart';
import 'package:getx_tutorial/getx_statemangement_example_four/controller/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({Key? key}) : super(key: key);

  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Example Four"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart_checkout_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.amber,
        label: GetX<CartController>(builder: (controller) {
          return Text(
            controller.totalCartItem.toString(),
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          );
        }),
      ),
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: shoppingController.product.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${controller.product[index].productName}',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                        '${controller.product[index].productDescription}'),
                                  ],
                                ),
                                Text('\$${controller.product[index].price}',
                                    style: TextStyle(fontSize: 24)),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                cartController
                                    .addToCart(controller.product[index]);
                              },
                              child: Text('Add to Cart'),
                            ),
                            /* Obx(
                              () => IconButton(
                                icon: controller.product[index].isFavorite.value
                                    ? Icon(Icons.check_box_rounded)
                                    : Icon(
                                        Icons.check_box_outline_blank_outlined),
                                onPressed: () {
                                  controller.product[index].isFavorite.toggle();
                                },
                              ),
                            ),*/
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          GetX<CartController>(builder: (controller) {
            return Text(
              "Total Amount :   ${controller.totalAmount}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            );
          }),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
