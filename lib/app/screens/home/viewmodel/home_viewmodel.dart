import 'package:mobx/mobx.dart';
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
  ResultState<TopNews> topNewsResultState = const ResultState.initial();

  @action
  Future<void> topNews() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iHomeRepository.topNews();
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
