import 'package:flutter/material.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/constants/device_config.dart';
import 'package:news_app/app/constants/string_extensions.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
    required this.categoryName,
    required this.language,
  });

  final String categoryName;
  final String language;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceConfig.screenHeight!,
      width: DeviceConfig.screenWidth! * 1 / 7,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            cPrimaryColor,
            cLightPrimaryColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80, left: 8, right: 8),
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            "${categoryName.capitalizeFirstLetter()} News for $language Language",
            style: const TextStyle(fontSize: 28, fontFamily: tTimes),
          ),
        ),
      ),
    );
  }
}
