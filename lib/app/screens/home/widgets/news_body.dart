import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/constants/device_config.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/home/viewmodel/home_viewmodel.dart';
import 'package:news_app/app/screens/home/widgets/news_box.dart';
import 'package:news_app/app/screens/home/widgets/url_webview.dart';

class NewsBody extends StatefulWidget {
  const NewsBody({
    super.key,
  });

  @override
  State<NewsBody> createState() => _NewsBodyState();
}

class _NewsBodyState extends State<NewsBody> {
  final HomeViewModel _viewModel = getIt.get<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => _viewModel.topNewsResultState.maybeWhen(
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
                  padding: const EdgeInsets.only(top: 150),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        index == 0 ? const SizedBox() : const Divider(),
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
