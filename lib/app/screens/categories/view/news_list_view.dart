import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/app/components/navigation_helper/navigation_helper.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/categories/viewmodel/categories_viewmodel.dart';
import 'package:news_app/app/screens/categories/widgets/category_body.dart';
import 'package:news_app/app/screens/categories/widgets/category_row.dart';
import 'package:news_app/app/screens/home/viewmodel/home_viewmodel.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key, required this.text, required this.viewModel});

  final String text;
  final CategoriesViewModel viewModel;

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  final HomeViewModel _viewModel = getIt.get<HomeViewModel>();

  @override
  void initState() {
    widget.viewModel.allNews(categories: widget.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigation.ofPop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: cPrimaryColor,
        scrolledUnderElevation: 0,
      ),
      backgroundColor: cLightPrimaryColor,
      body: Observer(
        builder: (context) {
          return Row(
            children: [
              CategoryRow(
                categoryName: widget.text,
                language: _viewModel.selectedValue!.title.toString(),
              ),
              CategoryBody(
                categories: widget.text,
                viewModel: widget.viewModel,
              ),
            ],
          );
        },
      ),
    );
  }
}
