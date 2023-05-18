import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> fruits = ["Apple", "Mangoes", "banana", "grapes"].obs;
  RxList tempFruitsLit = [].obs;

  addToFavorites(String value) {
    tempFruitsLit.add(value);
  }

  removeFromFavorites(String value) {
    tempFruitsLit.remove(value);
  }
}
