// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Breed _$BreedFromJson(Map<String, dynamic> json) => Breed(
      weight: json['weight'] == null
          ? null
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String?,
      cfaUrl: json['cfaUrl'] as String?,
      vcahospitalsUrl: json['vcahospitalsUrl'] as String?,
      temperament: json['temperament'] as String?,
      origin: json['origin'] as String?,
      countryCodes: json['countryCodes'] as String?,
      countryCode: json['countryCode'] as String?,
      description: json['description'] as String?,
      lifeSpan: json['lifeSpan'] as String?,
      indoor: (json['indoor'] as num?)?.toInt(),
      lap: (json['lap'] as num?)?.toInt(),
      altNames: json['altNames'] as String?,
      adaptability: (json['adaptability'] as num?)?.toInt(),
      affectionLevel: (json['affectionLevel'] as num?)?.toInt(),
      childFriendly: (json['childFriendly'] as num?)?.toInt(),
      dogFriendly: (json['dogFriendly'] as num?)?.toInt(),
      energyLevel: (json['energyLevel'] as num?)?.toInt(),
      grooming: (json['grooming'] as num?)?.toInt(),
      healthIssues: (json['healthIssues'] as num?)?.toInt(),
      intelligence: (json['intelligence'] as num?)?.toInt(),
      sheddingLevel: (json['sheddingLevel'] as num?)?.toInt(),
      socialNeeds: (json['socialNeeds'] as num?)?.toInt(),
      strangerFriendly: (json['strangerFriendly'] as num?)?.toInt(),
      vocalisation: (json['vocalisation'] as num?)?.toInt(),
      experimental: (json['experimental'] as num?)?.toInt(),
      hairless: (json['hairless'] as num?)?.toInt(),
      natural: (json['natural'] as num?)?.toInt(),
      rare: (json['rare'] as num?)?.toInt(),
      rex: (json['rex'] as num?)?.toInt(),
      suppressedTail: (json['suppressedTail'] as num?)?.toInt(),
      shortLegs: (json['shortLegs'] as num?)?.toInt(),
      wikipediaUrl: json['wikipediaUrl'] as String?,
      hypoallergenic: (json['hypoallergenic'] as num?)?.toInt(),
      referenceImageId: json['referenceImageId'] as String?,
    );

Map<String, dynamic> _$BreedToJson(Breed instance) => <String, dynamic>{
      if (instance.weight case final value?) 'weight': value,
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.cfaUrl case final value?) 'cfaUrl': value,
      if (instance.vcahospitalsUrl case final value?) 'vcahospitalsUrl': value,
      if (instance.temperament case final value?) 'temperament': value,
      if (instance.origin case final value?) 'origin': value,
      if (instance.countryCodes case final value?) 'countryCodes': value,
      if (instance.countryCode case final value?) 'countryCode': value,
      if (instance.description case final value?) 'description': value,
      if (instance.lifeSpan case final value?) 'lifeSpan': value,
      if (instance.indoor case final value?) 'indoor': value,
      if (instance.lap case final value?) 'lap': value,
      if (instance.altNames case final value?) 'altNames': value,
      if (instance.adaptability case final value?) 'adaptability': value,
      if (instance.affectionLevel case final value?) 'affectionLevel': value,
      if (instance.childFriendly case final value?) 'childFriendly': value,
      if (instance.dogFriendly case final value?) 'dogFriendly': value,
      if (instance.energyLevel case final value?) 'energyLevel': value,
      if (instance.grooming case final value?) 'grooming': value,
      if (instance.healthIssues case final value?) 'healthIssues': value,
      if (instance.intelligence case final value?) 'intelligence': value,
      if (instance.sheddingLevel case final value?) 'sheddingLevel': value,
      if (instance.socialNeeds case final value?) 'socialNeeds': value,
      if (instance.strangerFriendly case final value?)
        'strangerFriendly': value,
      if (instance.vocalisation case final value?) 'vocalisation': value,
      if (instance.experimental case final value?) 'experimental': value,
      if (instance.hairless case final value?) 'hairless': value,
      if (instance.natural case final value?) 'natural': value,
      if (instance.rare case final value?) 'rare': value,
      if (instance.rex case final value?) 'rex': value,
      if (instance.suppressedTail case final value?) 'suppressedTail': value,
      if (instance.shortLegs case final value?) 'shortLegs': value,
      if (instance.wikipediaUrl case final value?) 'wikipediaUrl': value,
      if (instance.hypoallergenic case final value?) 'hypoallergenic': value,
      if (instance.referenceImageId case final value?)
        'referenceImageId': value,
    };
