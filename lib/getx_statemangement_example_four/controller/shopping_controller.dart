import 'package:get/get.dart';
import 'package:getx_tutorial/getx_statemangement_example_four/models/product.dart';

class ShoppingController extends GetxController {
  var product = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(
          id: 1,
          productName: "APPLE PHONE",
          productImage: "adb",
          productDescription: "FIRST APPLE PHONE ON EARTH",
          price: 300),
      Product(
          id: 2,
          productName: "Android PHONE",
          productImage: "ANDROID",
          productDescription: "FIRST ANDROID PHONE ON EARTH",
          price: 200),
      Product(
          id: 1,
          productName: "KYA KAHU PHONE",
          productImage: "KYA KAHI",
          productDescription: "FIRST KYA KAHUN PHONE ON EARTH",
          price: 100)
    ];

    product.value = serverResponse;
  }
}
