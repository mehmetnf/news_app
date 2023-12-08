
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  factory CategoriesModel({
    String? key,
    String? image,
  }) = _CategoriesModel;
	
  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
			_$CategoriesModelFromJson(json);
}
