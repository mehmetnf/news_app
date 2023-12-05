// ignore_for_file: non_constant_identifier_names


import 'package:news_app/app/client/network/base/api_error.dart';
import 'package:news_app/app/client/network/base/base_network_type_def.dart';
import 'package:news_app/app/data/model/top_news.dart';

abstract class IHomeRepository {

  ResultDecode<TopNews, APIError> topNews();
}
