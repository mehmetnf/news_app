// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainViewModel on _MainViewModelBase, Store {
  late final _$controllerAtom =
      Atom(name: '_MainViewModelBase.controller', context: context);

  @override
  PersistentTabController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(PersistentTabController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  late final _$buildScreensAtom =
      Atom(name: '_MainViewModelBase.buildScreens', context: context);

  @override
  List<Widget> get buildScreens {
    _$buildScreensAtom.reportRead();
    return super.buildScreens;
  }

  @override
  set buildScreens(List<Widget> value) {
    _$buildScreensAtom.reportWrite(value, super.buildScreens, () {
      super.buildScreens = value;
    });
  }

  late final _$navBarItemsAtom =
      Atom(name: '_MainViewModelBase.navBarItems', context: context);

  @override
  List<PersistentBottomNavBarItem> get navBarItems {
    _$navBarItemsAtom.reportRead();
    return super.navBarItems;
  }

  @override
  set navBarItems(List<PersistentBottomNavBarItem> value) {
    _$navBarItemsAtom.reportWrite(value, super.navBarItems, () {
      super.navBarItems = value;
    });
  }

  @override
  String toString() {
    return '''
controller: ${controller},
buildScreens: ${buildScreens},
navBarItems: ${navBarItems}
    ''';
  }
}
