import 'package:get_it/get_it.dart';
import 'package:news_app/app/data/repository/home_repository.dart';
import 'package:news_app/app/data/repository/i_home_repository.dart';
import 'package:news_app/app/data/service/home_service.dart';
import 'package:news_app/app/data/service/i_home_service.dart';
import 'package:news_app/app/screens/categories/viewmodel/categories_viewmodel.dart';
import 'package:news_app/app/screens/home/viewmodel/home_viewmodel.dart';
import 'package:news_app/app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:news_app/app/screens/splash/viewmodel/splash_viewmodel.dart';

final getIt = GetIt.instance;

void setupGetIT() {
  setupViewModel();
  setupRepository();
  setupServices();
}

void setupViewModel() {
  getIt
    ..registerLazySingleton<SplashViewModel>(
      () => SplashViewModel(),
    )
    ..registerLazySingleton<MainViewModel>(
      () => MainViewModel(),
    )
    ..registerLazySingleton<HomeViewModel>(
      () => HomeViewModel(iHomeRepository: getIt()),
    )
    ..registerLazySingleton<CategoriesViewModel>(
      () => CategoriesViewModel(iHomeRepository: getIt()),
    );
}

void setupRepository() {
  getIt.registerLazySingleton<IHomeRepository>(
      () => HomeRepository(iHomeService: getIt()));
}

void setupServices() {
  getIt.registerLazySingleton<IHomeService>(HomeService.new);
}
