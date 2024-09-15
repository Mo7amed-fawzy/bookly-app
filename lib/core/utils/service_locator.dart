import 'package:dio/dio.dart';
import 'package:flutercoursetwo/core/utils/api_service.dart';
import 'package:flutercoursetwo/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
// service locator or dependency injection
// عشان بعمل انجكت لدبندسي معينهApiService(Dio()) وبعد كدا بستدعيها فاماكن تانيه

void setupDependencyInjection() {
  getIt.registerSingleton<ApiService>(ApiService(Dio())); // شبه الستات فالبلوك

  getIt.registerSingleton<HomeReopImpl>(HomeReopImpl(
    getIt.get<ApiService>(), // دا شكل الاستدعاء
  ));
}
