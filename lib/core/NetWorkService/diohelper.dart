import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static void init() {
    final BaseOptions baseOptions = BaseOptions(
        baseUrl: "https://dummyjson.com/",
        receiveDataWhenStatusError: true);

    dio = Dio(
      baseOptions,
    );
  }

  static Future<Response> getData(
      {required String url,  Map<String, dynamic>? parameters}) async {
    return await dio.get(
      url,
      queryParameters: parameters,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    return await dio.post(
      url,
      data: data,
    );
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    return await dio.put(
        url,
        data: data,
        options: Options(headers: {
          'Authorization':
          'khZQOFMEGjjyTblyoa0WPpZau161cOp0yRH9uaj5RkKI98c6WOhw4h033aEtf7SzUeHdU8'
        }));
  }

  static Future<Response> patchData({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    return await dio.patch(
      url,
      data: data,
    );
  }
}