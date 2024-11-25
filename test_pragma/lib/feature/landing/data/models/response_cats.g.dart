// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_cats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseCats _$ResponseCatsFromJson(Map<String, dynamic> json) => ResponseCats(
      breeds: (json['breeds'] as List<dynamic>?)
          ?.map((e) => Breed.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResponseCatsToJson(ResponseCats instance) =>
    <String, dynamic>{
      if (instance.breeds case final value?) 'breeds': value,
      if (instance.id case final value?) 'id': value,
      if (instance.url case final value?) 'url': value,
      if (instance.width case final value?) 'width': value,
      if (instance.height case final value?) 'height': value,
    };
