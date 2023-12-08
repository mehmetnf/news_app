
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_model.freezed.dart';
part 'language_model.g.dart';

@freezed
class LanguageModel with _$LanguageModel {
  factory LanguageModel({
    String? key,
    String? title,
  }) = _LanguageModel;
	
  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
			_$LanguageModelFromJson(json);
}
