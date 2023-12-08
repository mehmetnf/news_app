import 'package:flutter/material.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/constants/device_config.dart';

class TopNewsRow extends StatelessWidget {
  const TopNewsRow({
    super.key,
  });

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
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 120, horizontal: 8),
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            tTopNews,
            style: TextStyle(
                fontSize: 28, fontFamily: tTimes),
          ),
        ),
      ),
    );
  }
}