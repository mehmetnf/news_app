// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$countriesAtom =
      Atom(name: '_HomeViewModelBase.countries', context: context);

  @override
  List<LanguageModel> get countries {
    _$countriesAtom.reportRead();
    return super.countries;
  }

  @override
  set countries(List<LanguageModel> value) {
    _$countriesAtom.reportWrite(value, super.countries, () {
      super.countries = value;
    });
  }

  late final _$selectedValueAtom =
      Atom(name: '_HomeViewModelBase.selectedValue', context: context);

  @override
  LanguageModel? get selectedValue {
    _$selectedValueAtom.reportRead();
    return super.selectedValue;
  }

  @override
  set selectedValue(LanguageModel? value) {
    _$selectedValueAtom.reportWrite(value, super.selectedValue, () {
      super.selectedValue = value;
    });
  }

  late final _$topNewsResultStateAtom =
      Atom(name: '_HomeViewModelBase.topNewsResultState', context: context);

  @override
  ResultState<TopNews> get topNewsResultState {
    _$topNewsResultStateAtom.reportRead();
    return super.topNewsResultState;
  }

  @override
  set topNewsResultState(ResultState<TopNews> value) {
    _$topNewsResultStateAtom.reportWrite(value, super.topNewsResultState, () {
      super.topNewsResultState = value;
    });
  }

  late final _$topNewsAsyncAction =
      AsyncAction('_HomeViewModelBase.topNews', context: context);

  @override
  Future<void> topNews({required String language}) {
    return _$topNewsAsyncAction.run(() => super.topNews(language: language));
  }

  @override
  String toString() {
    return '''
countries: ${countries},
selectedValue: ${selectedValue},
topNewsResultState: ${topNewsResultState}
    ''';
  }
}
