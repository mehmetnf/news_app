import 'package:flutter/material.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/home/viewmodel/home_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final HomeViewModel _viewModel = getIt.get<HomeViewModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}