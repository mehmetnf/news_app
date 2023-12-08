import 'package:flutter/material.dart';
import 'package:news_app/app/data/model/categories_model.dart';
import 'package:news_app/app/screens/categories/widgets/categories_body.dart';

mixin Categories on State<CategoriesBody> {
  List<CategoriesModel> categories = [
    CategoriesModel(
      key: "business",
      image: "https://www.akerkimya.com.tr/wp-content/uploads/2022/04/hakkimizda-kopya-1024x576.jpg",
    ),
    CategoriesModel(
      key: "entertainment",
      image: "https://i.pinimg.com/originals/59/c0/a5/59c0a55e8b57264f376332ff39b02885.jpg",
    ),
    CategoriesModel(
      key: "food",
      image: "https://www.albidaayah.com/wp-content/uploads/Noodles-BW.jpg",
    ),
    CategoriesModel(
      key: "general",
      image: "https://www.sollis.co.uk/wp-content/uploads/2016/11/population.jpg",
    ),
    CategoriesModel(
      key: "health",
      image: "https://content.gallup.com/origin/gallupinc/GallupSpaces/Production/Cms/POLL/dd_a345dlkidmv7kergj_g.jpg",
    ),
    CategoriesModel(
      key: "politics",
      image: "https://cdn.theatlantic.com/thumbor/GDkuZxxcPJoVwdeQfjIP-L_5f3w=/0x0:4800x2700/1600x900/media/img/mt/2023/03/Brownstein_budget/original.jpg",
    ),
    CategoriesModel(
      key: "science",
      image: "https://assets-prd.punchdrink.com/wp-content/uploads/2017/04/Article-How-to-Use-Acids-in-Cocktails-Lactic-Malic-Fake-Lime-Daiquiri-Recipe-White-Lyan-London.jpg",
    ),
    CategoriesModel(
      key: "sports",
      image: "https://stuarttreesports.co.uk/wp-content/uploads/2019/04/Glory-1.jpg",
    ),
    CategoriesModel(
      key: "tech",
      image: "https://i.pinimg.com/originals/87/16/00/871600614c7ce18f02e1ba3a1bd0853e.jpg",
    ),
    CategoriesModel(
      key: "travel",
      image: "https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2022/05/airport.jpg?resize=1500%2C998&ssl=1",
    ),
  ];
}
