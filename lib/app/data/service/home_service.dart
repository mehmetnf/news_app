import 'package:news_app/app/client/client.dart';
import 'package:news_app/app/client/network/base/base_network_error_type.dart';
import 'package:news_app/app/client/network/base/base_network_type_def.dart';
import 'package:news_app/app/client/network/enum/request_method_enum.dart';
import 'package:news_app/app/data/model/all_news.dart';
import 'package:news_app/app/data/model/top_news.dart';
import 'package:news_app/app/data/service/i_home_service.dart';

class HomeService extends IHomeService {
  String api_token = "E0rfhTGkFlseSj3mtrDwdqV5Pe4m8r2LPfSwLHBH";

  @override
  ResultDecode<TopNews, BaseNetworkErrorType> topNews(
      {required String language}) async {
    final client = NetworkClient.client();
    final response = await client
        .setRequestMethod(requestMethodEnum: RequestMethodEnum.GET)
        .setPath(path: '/v1/news/top?')
        .setQueryParameters(queryParameters: {
      'api_token': api_token,
      'locale': language,
      'limit': 3,
    }).execute<TopNews, TopNews>(TopNews());
    return response;
  }

  @override
  ResultDecode<AllNews, BaseNetworkErrorType> allNews(
      {required String categories, required String language}) async {
    final client = NetworkClient.client();
    final response = await client
        .setRequestMethod(requestMethodEnum: RequestMethodEnum.GET)
        .setPath(path: '/v1/news/all?')
        .setQueryParameters(queryParameters: {
      'api_token': api_token,
      'language': language,
      'limit': 3,
      'categories': categories
    }).execute<AllNews, AllNews>(AllNews());
    return response;
  }
}
