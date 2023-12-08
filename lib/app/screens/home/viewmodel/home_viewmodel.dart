import 'package:mobx/mobx.dart';
import 'package:news_app/app/data/model/language_model.dart';
import 'package:news_app/app/data/model/top_news.dart';
import 'package:news_app/app/data/repository/i_home_repository.dart';
import 'package:news_app/app/results/base_errors_model.dart';
import 'package:news_app/app/results/result_state.dart';
part 'home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  final IHomeRepository iHomeRepository;
  _HomeViewModelBase({required this.iHomeRepository});

  @observable
  List<LanguageModel> countries = [
    LanguageModel(
      key: "bg",
      title: "Bulgarian",
    ),
    LanguageModel(
      key: "cs",
      title: "Czech",
    ),
    LanguageModel(
      key: "da",
      title: "Danish",
    ),
    LanguageModel(
      key: "de",
      title: "German",
    ),
    LanguageModel(
      key: "el",
      title: "Greek",
    ),
    LanguageModel(
      key: "en",
      title: "English",
    ),
    LanguageModel(
      key: "es",
      title: "Spanish",
    ),
    LanguageModel(
      key: "et",
      title: "Estonian",
    ),
    LanguageModel(
      key: "fa",
      title: "Farsi",
    ),
    LanguageModel(
      key: "fi",
      title: "Finnish",
    ),
    LanguageModel(
      key: "fr",
      title: "French",
    ),
    LanguageModel(
      key: "hi",
      title: "Hindi",
    ),
    LanguageModel(
      key: "hr",
      title: "Croatian",
    ),
    LanguageModel(
      key: "hu",
      title: "Hungarian",
    ),
    LanguageModel(
      key: "id",
      title: "Indonesian",
    ),
    LanguageModel(
      key: "it",
      title: "Italian",
    ),
    LanguageModel(
      key: "lt",
      title: "Lithuanian",
    ),
    LanguageModel(
      key: "nl",
      title: "Dutch",
    ),
    LanguageModel(
      key: "no",
      title: "Norwegian",
    ),
    LanguageModel(
      key: "pl",
      title: "Polish",
    ),
    LanguageModel(
      key: "pt",
      title: "Portuguese",
    ),
    LanguageModel(
      key: "ro",
      title: "Romanian",
    ),
    LanguageModel(
      key: "sv",
      title: "Swedish",
    ),
    LanguageModel(
      key: "tr",
      title: "Turkish",
    ),
  ];

  @observable
  LanguageModel? selectedValue = LanguageModel(key: "tr", title: "Turkish");

  @observable
  ResultState<TopNews> topNewsResultState = const ResultState.initial();

  @action
  Future<void> topNews({required String language}) async {
    topNewsResultState = const ResultState.loading();
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iHomeRepository.topNews(language: language);
    await result.when(
      success: (data) async {
        topNewsResultState = ResultState.completed(data);
      },
      failure: (error) async {
        topNewsResultState = ResultState.failed(
            BaseErrorsModel(message: error.meta?.infoList?.first.message));
      },
    );
  }
}
