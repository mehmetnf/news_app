import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:news_app/app/constants/app_strings.dart';
import 'package:news_app/app/screens/home/view/home_view.dart';
import 'package:news_app/app/screens/profile/view/profile_view.dart';
import 'package:news_app/app/screens/categories/view/categories_view.dart';
import 'package:news_app/app/theme/news_icon_icons.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
part 'main_viewmodel.g.dart';

class MainViewModel = _MainViewModelBase with _$MainViewModel;

abstract class _MainViewModelBase with Store {
  _MainViewModelBase();

  @observable
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @observable
  List<Widget> buildScreens = <Widget>[
    const HomeView(),
    const CategoriesView(),
    const ProfileView(),
  ];

  @observable
  List<PersistentBottomNavBarItem> navBarItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(NewsIcon.home),
      title: tHome,
      textStyle: const TextStyle(fontFamily: tTimes),
      activeColorPrimary: cWhite,
      activeColorSecondary: cBlack,
      inactiveColorPrimary: cDarkGrey,
      inactiveColorSecondary: cWhite,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(NewsIcon.th_thumb),
      title: tCategories,
      textStyle: const TextStyle(fontFamily: tTimes),
      activeColorPrimary: cWhite,
      activeColorSecondary: cBlack,
      inactiveColorPrimary: cDarkGrey,
      inactiveColorSecondary: cWhite,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(NewsIcon.user),
      title: tProfile,
      textStyle: const TextStyle(fontFamily: tTimes),
      activeColorPrimary: cWhite,
      activeColorSecondary: cBlack,
      inactiveColorPrimary: cDarkGrey,
      inactiveColorSecondary: cWhite,
    ),
  ];
}
