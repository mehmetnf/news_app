// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopNewsImpl _$$TopNewsImplFromJson(Map<String, dynamic> json) =>
    _$TopNewsImpl(
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopNewsImplToJson(_$TopNewsImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };
