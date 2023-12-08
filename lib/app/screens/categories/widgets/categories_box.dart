import 'package:flutter/material.dart';
import 'package:news_app/app/constants/app_strings.dart';

class CategoriesBox extends StatelessWidget {
  const CategoriesBox({
    Key? key,
    required this.text,
    required this.imageUrl,
  }) : super(key: key);

  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: cBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(left: 5, bottom: 5),
      child: Text(
        text,
        style: const TextStyle(
          inherit: true,
          fontSize: 25,
          fontFamily: tTimes,
          fontWeight: FontWeight.w900,
          color: cWhite,
          shadows: [
            Shadow(offset: Offset(-0.5, -0.5), color: cBlack),
            Shadow(offset: Offset(0.5, -0.5), color: cBlack),
            Shadow(offset: Offset(0.5, 0.5), color: cBlack),
            Shadow(offset: Offset(-0.5, 0.5), color: cBlack),
          ],
        ),
      ),
    );
  }
}
