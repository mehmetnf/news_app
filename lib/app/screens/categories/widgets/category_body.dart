import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/constants/device_config.dart';
import 'package:news_app/app/screens/categories/viewmodel/categories_viewmodel.dart';
import 'package:news_app/app/screens/home/widgets/news_box.dart';
import 'package:news_app/app/screens/home/widgets/url_webview.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({
    super.key,
    required this.categories,
    required this.viewModel,
  });

  final String categories;
  final CategoriesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => viewModel.allNewsResultState.maybeWhen(
        failed: (error) => ScaffoldMessenger(child: Text(error.message!)),
        orElse: () => SizedBox(
          width: DeviceConfig.screenWidth! * 6 / 7,
          child: const Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ),
        ),
        completed: (data) => data.data!.isNotEmpty
            ? SizedBox(
                height: DeviceConfig.screenHeight!,
                width: DeviceConfig.screenWidth! * 6 / 7,
                child: ListView.builder(
                  itemCount: data.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const Divider(),
                        GestureDetector(
                          onTap: () => UrlWebView(
                            url: data.data![index].url.toString(),
                          ),
                          child: NewsBox(
                            image: data.data![index].image_url.toString(),
                            time: data.data![index].published_at.toString(),
                            title: data.data![index].title.toString(),
                            url: data.data![index].source.toString(),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            : SizedBox(
                width: DeviceConfig.screenWidth! * 6 / 7,
                child: const Center(
                  child: Text(topNewsNot),
                ),
              ),
      ),
    );
  }
}
