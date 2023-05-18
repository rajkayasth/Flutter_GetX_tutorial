import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_statemanagement_demo_with_list/favorite_controller.dart';

class StateManagementWithList extends StatefulWidget {
  const StateManagementWithList({Key? key}) : super(key: key);

  @override
  State<StateManagementWithList> createState() =>
      _StateManagementWithListState();
}

class _StateManagementWithListState extends State<StateManagementWithList> {
  FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManagement using list"),
      ),
      body: ListView.builder(
        itemCount: favoriteController.fruits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                favoriteController.fruits[index].toString(),
              ),
              trailing: Obx(() => Icon(
                    Icons.favorite,
                    color: favoriteController.tempFruitsLit
                            .contains(favoriteController.fruits[index])
                        ? Colors.red
                        : Colors.white,
                  )),
              onTap: () {
                if (favoriteController.tempFruitsLit
                    .contains(favoriteController.fruits[index])) {
                  favoriteController
                      .removeFromFavorites(favoriteController.fruits[index]);
                } else {
                  favoriteController
                      .addToFavorites(favoriteController.fruits[index]);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
