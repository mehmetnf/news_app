import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/app/client/network/base/base_response_model.dart';
import 'package:news_app/app/data/model/data_model.dart';
import 'package:news_app/app/data/model/meta_model.dart';

part 'top_news.freezed.dart';
part 'top_news.g.dart';

@freezed
class TopNews extends BaseResponseModel with _$TopNews {
  factory TopNews({
    MetaModel? meta,
    List <DataModel>? data,
  }) = _TopNews;

  factory TopNews.fromJson(Map<String, dynamic> json) =>
      _$TopNewsFromJson(json);

  TopNews._();

  @override
  TopNews fromJson(Map<String, dynamic> json) => TopNews.fromJson(json);
}
