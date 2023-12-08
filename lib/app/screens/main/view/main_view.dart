import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/app/constants/device_config.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:news_app/app/screens/main/widgets/bottom_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  final MainViewModel _viewModel = getIt.get<MainViewModel>();

  @override
  Widget build(BuildContext context) {
    DeviceConfig().init(context);
    return Observer(
      builder: (context) => Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavBar(viewModel: _viewModel),
      ),
    );
  }
}
