import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:getx_tutorial/getx_api_calling_example/shopping_app/model/ProductModel.dart';
import 'package:getx_tutorial/getx_api_calling_example/shopping_app/model/product.dart';

class RemoteServices {
  Dio? dio;

  RemoteServices() {
    if (dio == null) {
      BaseOptions options = BaseOptions(
          baseUrl: "https://jsonplaceholder.typicode.com/photos",
          receiveDataWhenStatusError: true,
          connectTimeout: const Duration(seconds: 60), // 60 seconds
          receiveTimeout: const Duration(seconds: 60) // 60 seconds
          );

      dio = Dio(options);
      dio?.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          debugPrint(options.path + options.queryParameters.toString());
          return handler.next(options);
        },
        onResponse: (e, handler) {
          debugPrint("${e.statusCode}\n${e.requestOptions.queryParameters}");
          debugPrint(e.statusMessage.toString());
          debugPrint(e.data.toString());
          return handler.next(e);
        },
        onError: (e, handler) {
          debugPrint(e.stackTrace.toString());
          return handler.next(e);
        },
      ));
    }
  }

  Future<List<ProductModel>?> fetchProducts() async {
    final queryParameters = {
      'brand': "covergirl",
    };
    var response = await dio!.get(
        "http://makeup-api.herokuapp.com/api/v1/products.json",
        queryParameters: queryParameters);
    var list = <ProductModel>[];
    if (response.statusCode == 200) {
      var jsonString = response.data;
      for (var i in jsonString) {
        list.add(ProductModel.fromJson(i));
      }
      return /*productFromJson(jsonString);*/ list;
    } else {
      //show error message
      return null;
    }
  }
}
