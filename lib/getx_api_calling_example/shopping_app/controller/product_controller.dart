import 'package:get/get.dart';
import 'package:getx_tutorial/getx_api_calling_example/shopping_app/model/ProductModel.dart';
import 'package:getx_tutorial/getx_api_calling_example/shopping_app/model/product.dart';
import 'package:getx_tutorial/getx_api_calling_example/shopping_app/services/remote_services.dart';

class ProductController extends GetxController {
  var productList = <ProductModel>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  void fetchProduct() async {
    var product = await RemoteServices().fetchProducts();
    if (product != null) {
      isLoading.value = true;
      productList.value = product;
    }
  }
}
