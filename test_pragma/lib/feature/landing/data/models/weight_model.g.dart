// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      imperial: json['imperial'] as String?,
      metric: json['metric'] as String?,
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      if (instance.imperial case final value?) 'imperial': value,
      if (instance.metric case final value?) 'metric': value,
    };
