// ignore_for_file: avoid_print

import 'package:breaking_bad/constants/strings.dart';
import 'package:dio/dio.dart';

class CharWebServices {
  Dio? dio;

  CharWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllChar() async {
    try {
      Response response = await dio!.get('characters');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
