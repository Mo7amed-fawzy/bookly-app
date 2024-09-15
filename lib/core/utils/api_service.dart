import 'package:dio/dio.dart';

// دا الرابر البيهندل كل الايبياي سيرفيز بتاعي
class ApiService {
  ApiService(this._dio);

  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio; // عملنا اوبجكن من دايو اقدر استخدمها

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    // كدا خلصت ريكويست
    var response = await _dio.get('$_baseUrl$endPoint');
    // محتاج استقبل الريزولت

    return response.data;
    // هنعمل ريتيرن للداتا واهندل كل حاجه ليها علاقه بالريسبونس
  }
}
