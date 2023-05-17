import 'package:get/get.dart';
import 'package:getx_tutorial/getx_statemangement_example_four/models/product.dart';

class CartController extends GetxController {
  var cartList = <Product>[].obs;

  int get totalCartItem => cartList.length;

  double get totalAmount => cartList.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product) {
    cartList.add(product);
  }
}
