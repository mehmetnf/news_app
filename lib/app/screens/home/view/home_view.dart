import 'package:flutter/material.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/home/viewmodel/home_viewmodel.dart';
import 'package:news_app/app/screens/home/widgets/home_title.dart';
import 'package:news_app/app/screens/home/widgets/news_body.dart';
import 'package:news_app/app/screens/home/widgets/top_news_row.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewModel _viewModel = getIt.get<HomeViewModel>();

  @override
  void initState() {
    _viewModel.topNews(language: _viewModel.selectedValue!.key.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Stack(
        children: [
          Row(
            children: [
              TopNewsRow(),
              NewsBody(),
            ],
          ),
          HomeTitle(),
        ],
      ),
    );
  }
}
