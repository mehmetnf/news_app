// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CategoriesViewModel on _CategoriesViewModelBase, Store {
  late final _$allNewsResultStateAtom = Atom(
      name: '_CategoriesViewModelBase.allNewsResultState', context: context);

  @override
  ResultState<AllNews> get allNewsResultState {
    _$allNewsResultStateAtom.reportRead();
    return super.allNewsResultState;
  }

  @override
  set allNewsResultState(ResultState<AllNews> value) {
    _$allNewsResultStateAtom.reportWrite(value, super.allNewsResultState, () {
      super.allNewsResultState = value;
    });
  }

  late final _$allNewsAsyncAction =
      AsyncAction('_CategoriesViewModelBase.allNews', context: context);

  @override
  Future<void> allNews({required String categories}) {
    return _$allNewsAsyncAction
        .run(() => super.allNews(categories: categories));
  }

  @override
  String toString() {
    return '''
allNewsResultState: ${allNewsResultState}
    ''';
  }
}
