// تاني خطوه هي عمل السيرفيز بتعتي بعد المودل
// هستعمل ريبوزتوري باترن بيعتمد علي ابستراكت كلاس وفيه الميثودس بتعتي بدون امبلمنتاشن => مقولش بيحصل فيها اي ) عشان الابستراكت
// الريبوزتري باترن بحدد الفيتشر هتعمل اي لكن مش هتعملو ازاي
// طبعا اقدر معملش كدا واعمل سيرفيز فيها الفنكشن كامله بس الريبو احسن
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // هتريتيرن لليست اوف بوكمودل
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  // نوع تايب في 2 تايب الرايت ساكسس والليفت فيليار
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
