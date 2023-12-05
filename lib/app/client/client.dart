
import 'package:news_app/app/client/network/builder/network_manager.dart';

class NetworkClient {
  static NetworkManager client({bool isUrlUse = true}) {
    return NetworkManager(
      authToken: null,
      isLog: true,
      isReleaseURL: true,
      releaseBaseURL: isUrlUse ?  "https://api.thenewsapi.com" : null,
      testBaseURL: isUrlUse ?  "https://api.thenewsapi.com" : null,
    );
  }
}
