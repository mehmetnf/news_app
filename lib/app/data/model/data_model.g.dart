// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      uuid: json['uuid'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      keywords: json['keywords'] as String?,
      snippet: json['snippet'] as String?,
      url: json['url'] as String?,
      image_url: json['image_url'] as String?,
      language: json['language'] as String?,
      published_at: json['published_at'] as String?,
      source: json['source'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      relevance_score: (json['relevance_score'] as num?)?.toDouble(),
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'description': instance.description,
      'keywords': instance.keywords,
      'snippet': instance.snippet,
      'url': instance.url,
      'image_url': instance.image_url,
      'language': instance.language,
      'published_at': instance.published_at,
      'source': instance.source,
      'categories': instance.categories,
      'relevance_score': instance.relevance_score,
      'locale': instance.locale,
    };
