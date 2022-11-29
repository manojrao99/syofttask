import 'dart:convert';

import 'package:dio/dio.dart';
class ApiHelper {
  static final ApiHelper _apihelper = ApiHelper._internal();

  factory ApiHelper() {
    return _apihelper;
  }
  ApiHelper._internal();
  // Common headers to be used across API methods
  Map<String, String> header = {
    "content-type": "application/json",
  };
  final dio = Dio(); // Single instance var used across multiple calls

  // Path is expected to contain the complete url including parameters if any
  // for example http://abc.com/profile?id=123
  Future<Map<String, dynamic>> get(String path) async {
    Map<String, dynamic> returnData = {};
    try {
      Response response =
      await dio.get(path, options: Options(headers: header));
      if (response.statusCode == 200) {
        returnData = response.data;
      }
    } catch (error) {
      print('GET Error: ${error.toString()}');
    }
    return returnData;
  }

  // Use to create data by calling respective dio method.
  // postData is the complete data set to be created by API
  Future<Map<String, dynamic>> post(
      {required String path, required Map<String, dynamic> postData}) async {
    Map<String, dynamic> returnMap = {};
    try {
      Response response = await dio.post(path,
          data: postData, options: Options(headers: header));
    ;
      if (response.statusCode == 200) {
        returnMap =  json.decode(response.data);
      }
    } catch (error) {
      print('POST Error: ${error.toString()}');
    }
    return returnMap;
  }

}