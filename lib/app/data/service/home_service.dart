import 'package:news_app/app/client/client.dart';
import 'package:news_app/app/client/network/base/base_network_error_type.dart';
import 'package:news_app/app/client/network/base/base_network_type_def.dart';
import 'package:news_app/app/client/network/enum/request_method_enum.dart';
import 'package:news_app/app/data/model/top_news.dart';
import 'package:news_app/app/data/service/i_home_service.dart';

class HomeService extends IHomeService {
  String api_token = "85oQ7WCS07AyGnXrtJQHuHYizZszJogLE05KAtAJ";

  @override
  ResultDecode<TopNews, BaseNetworkErrorType> topNews() async {
    final client = NetworkClient.client();
    final response = await client
        .setRequestMethod(requestMethodEnum: RequestMethodEnum.GET)
        .setPath(path: '/v1/news/top?')
        .setQueryParameters(queryParameters: {
      'api_token': api_token,
      'locale': 'tr',
      'limit': 6,
    }).execute<TopNews, TopNews>(TopNews());
    print(response);
    return response;
  }
}
