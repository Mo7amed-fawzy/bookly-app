import 'package:dartz/dartz.dart';
import 'package:flutercoursetwo/core/errors/failure.dart';
import 'package:flutercoursetwo/features/home/data/models/book_model.dart';
import 'package:flutercoursetwo/features/home/data/repos/home_repo.dart';

class HomeReopImpl implements HomeRepo {
  // عشان مكررش فالكود بعمل رابر ودا نقطة تواصل مبيني وبين السيرفيز بعملها حوليها وهي البتعامل معاها من كل الاماكن
  // مثلا اقدر اخد الرابر حولين فايرباز سيرفز فتطبيق جديد واعيد استخدامه (api_service.dart اسم فايل الرابر)
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
