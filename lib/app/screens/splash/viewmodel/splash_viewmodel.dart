import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mobx/mobx.dart';
import 'package:news_app/app/components/navigation_helper/navigation_helper.dart';
import 'package:news_app/app/screens/main/view/main_view.dart';
part 'splash_viewmodel.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store {
  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
    Navigation.push(page: const MainView());
  }
}
