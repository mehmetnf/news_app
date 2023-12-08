import 'package:mobx/mobx.dart';
import 'package:news_app/app/data/model/all_news.dart';
import 'package:news_app/app/data/repository/i_home_repository.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/results/base_errors_model.dart';
import 'package:news_app/app/results/result_state.dart';
import 'package:news_app/app/screens/home/viewmodel/home_viewmodel.dart';
part 'categories_viewmodel.g.dart';

class CategoriesViewModel = _CategoriesViewModelBase with _$CategoriesViewModel;

abstract class _CategoriesViewModelBase with Store {
  final IHomeRepository iHomeRepository;
  _CategoriesViewModelBase({required this.iHomeRepository});

  final HomeViewModel _viewModel = getIt.get<HomeViewModel>();

  @observable
  ResultState<AllNews> allNewsResultState = const ResultState.initial();

  @action
  Future<void> allNews({required String categories}) async {
    allNewsResultState = const ResultState.loading();
    await Future.delayed(const Duration(milliseconds: 1000));
    final result = await iHomeRepository.allNews(categories: categories, language: _viewModel.selectedValue!.key.toString());
    await result.when(
      success: (data) async {
        allNewsResultState = ResultState.completed(data);
      },
      failure: (error) async {
        allNewsResultState = ResultState.failed(
            BaseErrorsModel(message: error.meta?.infoList?.first.message));
      },
    );
  }
}
