// ignore_for_file: non_constant_identifier_names

import 'package:news_app/app/client/network/base/api_error.dart';
import 'package:news_app/app/client/network/base/base_network_type_def.dart';
import 'package:news_app/app/client/result/result.dart';
import 'package:news_app/app/data/model/all_news.dart';
import 'package:news_app/app/data/model/top_news.dart';
import 'package:news_app/app/data/repository/i_home_repository.dart';
import 'package:news_app/app/data/service/i_home_service.dart';

class HomeRepository extends IHomeRepository {
  HomeRepository({required this.iHomeService});
  final IHomeService iHomeService;

  @override
  ResultDecode<TopNews, APIError> topNews({required String language}) async {
    final response = await iHomeService.topNews(language: language);
    return response.when(
        success: (data) => Result.success(data),
        failure: (error) => Result.failure(error.handleApiError));
  }

  @override
  ResultDecode<AllNews, APIError> allNews(
      {required String categories, required String language}) async {
    final response =
        await iHomeService.allNews(categories: categories, language: language);
    return response.when(
        success: (data) => Result.success(data),
        failure: (error) => Result.failure(error.handleApiError));
  }
}
