import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/app/screens/main/viewmodel/main_viewmodel.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required MainViewModel viewModel,
  }) : _viewModel = viewModel;

  final MainViewModel _viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return PersistentTabView(
          navBarHeight: 70,
          padding: const NavBarPadding.all(3),
          context,
          controller: _viewModel.controller,
          screens: _viewModel.buildScreens,
          items: _viewModel.navBarItems,
          confineInSafeArea: true,
          backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
          hideNavigationBarWhenKeyboardShows: true,
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style1,
        );
      },
    );
  }
}
