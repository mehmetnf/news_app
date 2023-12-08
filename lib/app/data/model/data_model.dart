import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  factory DataModel({
    String? uuid,
    String? title,
    String? description,
    String? keywords,
    String? snippet,
    String? url,
    String? image_url,
    String? language,
    String? published_at,
    String? source,
    List<String>? categories,
    double? relevance_score,
    String? locale,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
