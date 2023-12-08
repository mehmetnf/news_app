import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/app/client/network/base/base_response_model.dart';
import 'package:news_app/app/data/model/data_model.dart';
import 'package:news_app/app/data/model/meta_model.dart';

part 'all_news.freezed.dart';
part 'all_news.g.dart';

@freezed
class AllNews extends BaseResponseModel with _$AllNews {
  factory AllNews({
    MetaModel? meta,
    List<DataModel>? data,
  }) = _AllNews;

  factory AllNews.fromJson(Map<String, dynamic> json) =>
      _$AllNewsFromJson(json);

  AllNews._();

  @override
  AllNews fromJson(Map<String, dynamic> json) => AllNews.fromJson(json);
}
