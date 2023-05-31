import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:getx_tutorial/getx_mvvm_demo/data/app_exceptions.dart';
import 'package:getx_tutorial/getx_mvvm_demo/data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  Dio? dio;

  NetworkApiServices() {
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

  @override
  Future getApi(String url) async {
    dynamic responseJson;
    try {
      final response = await dio?.get(url).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeoutException {
      throw RequestTimeoutException("");
    }
    return responseJson;
  }

  @override
  Future postApi(var data, String url) async {
    debugPrint(url);
    debugPrint(data);
    dynamic responseJson;
    try {
      final response = await dio
          ?.post(url, data: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeoutException {
      throw RequestTimeoutException("");
    }
    return responseJson;
  }

  dynamic returnResponse(Response? response) {
    switch (response?.statusCode) {
      case 200:
        {
          dynamic responseJson = jsonDecode(response?.data);
          return responseJson;
        }
      case 400:
        {
          throw InvalidUrlException;
        }
      default:
        {
          throw FetchDataException(
              'Error Occurred While Communication server ${response?.statusCode}');
        }
    }
  }
}
