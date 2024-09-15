import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutercoursetwo/core/errors/failure.dart';
import 'package:flutercoursetwo/core/utils/api_service.dart';
import 'package:flutercoursetwo/features/home/data/models/book_model.dart';
import 'package:flutercoursetwo/features/home/data/repos/home_repo.dart';

class HomeReopImpl implements HomeRepo {
  HomeReopImpl(this.apiService);
  // عشان مكررش فالكود بعمل رابر ودا نقطة تواصل مبيني وبين السيرفيز بعملها حوليها وهي البتعامل معاها من كل الاماكن
  // مثلا اقدر اخد الرابر حولين فايرباز سيرفز فتطبيق جديد واعيد استخدامه (api_service.dart اسم فايل الرابر)

  final ApiService apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:moon');

      List<BookModel> books = [];

      for (var item in data['items']) {
        // بعمل ماب (بعمل بارسنج)
        books.add(BookModel.fromJson(item));
      }
      return right(books); // تشك علي دي بعدين
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
        //  هنا بكاتش علي دايو ارور وممكن يكون مختلف جاي من حاجه تاني كنت بعمل بارسنج او غيرو فحصلت مشكلة
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:moon');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
