// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllNewsImpl _$$AllNewsImplFromJson(Map<String, dynamic> json) =>
    _$AllNewsImpl(
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllNewsImplToJson(_$AllNewsImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
