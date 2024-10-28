import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';

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

// بتمكني من استدعائها لاحقاً في أي مكان داخل المشروع دون الحاجة لإعادة إنشائها
