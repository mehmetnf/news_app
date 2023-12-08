import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/home/viewmodel/home_viewmodel.dart';
import 'package:news_app/app/screens/home/widgets/dropdown_widget.dart';

class HomeTitle extends StatefulWidget {
  const HomeTitle({
    super.key,
  });

  @override
  State<HomeTitle> createState() => _HomeTitleState();
}

class _HomeTitleState extends State<HomeTitle> {
  final HomeViewModel _viewModel = getIt.get<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Positioned(
          top: 80,
          left: 25,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                tKainat,
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: tTimes,
                    decoration: TextDecoration.underline),
              ),
              DropDownWidget(
                viewModel: _viewModel,
              ),
            ],
          ),
        );
      },
    );
  }
}
