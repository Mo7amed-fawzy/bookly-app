import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  // استعملت سوبركونستركتور عشان هو بي اكستند

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Request to ApiServer was connectionError');

      case DioExceptionType.unknown:
        if (dioException.message!
            .contains('SocketException')) // الحالة دي مفيش نيتوورك اصلا
        {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, please try again');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    // هتسقبل الريسبونس بتاع الدايو ايرور
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Yout request not found, please try later');
    } else if (statusCode == 500) {
      // دي كدا مشكلة فالسيرفر اصلا
      return ServerFailure('Internal Server error ,please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
