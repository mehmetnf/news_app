// ignore_for_file: non_constant_identifier_names

import 'package:news_app/app/client/network/base/api_error.dart';
import 'package:news_app/app/client/network/base/base_network_type_def.dart';
import 'package:news_app/app/client/result/result.dart';
import 'package:news_app/app/data/model/top_news.dart';
import 'package:news_app/app/data/repository/i_home_repository.dart';
import 'package:news_app/app/data/service/i_home_service.dart';

class HomeRepository extends IHomeRepository {
  HomeRepository({required this.iHomeService});
  final IHomeService iHomeService;

  @override
  ResultDecode<TopNews, APIError> topNews() async {
    final response = await iHomeService.topNews();
    return response.when(
        success: (data) => Result.success(data),
        failure: (error) => Result.failure(error.handleApiError));
  }
}
