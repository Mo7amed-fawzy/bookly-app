import 'package:dio/dio.dart';

class ApiService {
  ApiService(this.dio);
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio; // عملنا اوبجكن من دايو اقدر استخدمها

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    // كدا خلصت ريكويست
    var response = await dio.get('$_baseUrl$endPoint');
    // محتاج استقبل الريزولت

    return response.data;
  }
}
