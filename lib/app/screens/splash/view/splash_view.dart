import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/splash/viewmodel/splash_viewmodel.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final SplashViewModel _viewModel = getIt.get<SplashViewModel>();

  @override
  void initState() {
    _viewModel.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimaryColor,
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 40.0,
              fontFamily: tTimes,
              color: cBlack),
          child: AnimatedTextKit(
            isRepeatingAnimation: false,
            totalRepeatCount: 0,
            animatedTexts: [
              TypewriterAnimatedText(
                tKainat,
                speed: const Duration(milliseconds: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
