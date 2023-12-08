import 'package:flutter/material.dart';
import 'package:news_app/app/components/navigation_helper/navigation_helper.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/categories/view/news_list_view.dart';
import 'package:news_app/app/screens/categories/viewmodel/categories_viewmodel.dart';
import 'package:news_app/app/screens/categories/widgets/categories.dart';
import 'package:news_app/app/screens/categories/widgets/categories_box.dart';

class CategoriesBody extends StatefulWidget {
  const CategoriesBody({super.key});

  @override
  State<CategoriesBody> createState() => _CategoriesBodyState();
}

class _CategoriesBodyState extends State<CategoriesBody> with Categories {

  final CategoriesViewModel _viewModel = getIt.get<CategoriesViewModel>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 65),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigation.push(
              page: NewsListView(
                text: categories[index].key.toString(), viewModel: _viewModel,
              ),
            ),
            child: CategoriesBox(
              text: categories[index].key.toString(),
              imageUrl: categories[index].image.toString(),
            ),
          );
        },
      ),
    );
  }
}
