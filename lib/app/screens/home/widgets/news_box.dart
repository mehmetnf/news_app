import 'package:flutter/material.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/constants/device_config.dart';

class NewsBox extends StatelessWidget {
  const NewsBox({
    super.key,
    required this.title,
    required this.url,
    required this.time,
    required this.image,
  });

  final String title;
  final String url;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: cPrimaryColor,
          ),
          height: 140,
          width: DeviceConfig.screenWidth! * 6 / 7,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 120,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        url.length > 24 ? url.substring(0, 23) : url,
                        style: const TextStyle(
                          color: cLightGrey,
                        ),
                      ),
                      Text(
                        title.length > 65
                            ? "${title.substring(0, 63)}.."
                            : title,
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                      Text(
                        time.length > 10 ? time.substring(0, 10) : time,
                        style: const TextStyle(
                          color: cLightGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
