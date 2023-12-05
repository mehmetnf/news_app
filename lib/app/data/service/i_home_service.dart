
import 'package:news_app/app/client/network/base/base_network_error_type.dart';
import 'package:news_app/app/client/network/base/base_network_type_def.dart';
import 'package:news_app/app/data/model/top_news.dart';

abstract class IHomeService {
  ResultDecode<TopNews, BaseNetworkErrorType> topNews();
}
