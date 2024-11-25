import 'package:json_annotation/json_annotation.dart';
import 'package:test_pragma/feature/landing/data/models/response_breeds.dart';
part 'breed_model.g.dart';

@JsonSerializable()
class Breed {
  @JsonKey(includeIfNull: false)
  final Weight? weight;
  @JsonKey(includeIfNull: false)
  final String? id;
  @JsonKey(includeIfNull: false)
  final String? name;
  @JsonKey(includeIfNull: false)
  final String? cfaUrl;
  @JsonKey(includeIfNull: false)
  //final String? vetstreetUrl;
  final String? vcahospitalsUrl;
  @JsonKey(includeIfNull: false)
  final String? temperament;
  @JsonKey(includeIfNull: false)
  final String? origin;
  @JsonKey(includeIfNull: false)
  final String? countryCodes;
  @JsonKey(includeIfNull: false)
  final String? countryCode;
  @JsonKey(includeIfNull: false)
  final String? description;
  @JsonKey(includeIfNull: false)
  final String? lifeSpan;
  @JsonKey(includeIfNull: false)
  final int? indoor;
  @JsonKey(includeIfNull: false)
  final int? lap;
  @JsonKey(includeIfNull: false)
  final String? altNames;
  @JsonKey(includeIfNull: false)
  final int? adaptability;
  @JsonKey(includeIfNull: false)
  final int? affectionLevel;
  @JsonKey(includeIfNull: false)
  final int? childFriendly;
  @JsonKey(includeIfNull: false)
  final int? dogFriendly;
  @JsonKey(includeIfNull: false)
  final int? energyLevel;
  @JsonKey(includeIfNull: false)
  final int? grooming;
  @JsonKey(includeIfNull: false)
  final int? healthIssues;
  @JsonKey(includeIfNull: false)
  final int? intelligence;
  @JsonKey(includeIfNull: false)
  final int? sheddingLevel;
  @JsonKey(includeIfNull: false)
  final int? socialNeeds;
  @JsonKey(includeIfNull: false)
  final int? strangerFriendly;
  @JsonKey(includeIfNull: false)
  final int? vocalisation;
  @JsonKey(includeIfNull: false)
  final int? experimental;
  @JsonKey(includeIfNull: false)
  final int? hairless;
  @JsonKey(includeIfNull: false)
  final int? natural;
  @JsonKey(includeIfNull: false)
  final int? rare;
  @JsonKey(includeIfNull: false)
  final int? rex;
  @JsonKey(includeIfNull: false)
  final int? suppressedTail;
  @JsonKey(includeIfNull: false)
  final int? shortLegs;
  @JsonKey(includeIfNull: false)
  final String? wikipediaUrl;
  @JsonKey(includeIfNull: false)
  final int? hypoallergenic;
  @JsonKey(includeIfNull: false)
  final String? referenceImageId;

  Breed({
    this.weight,
    this.id,
    this.name,
    this.cfaUrl,
    this.vcahospitalsUrl,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.description,
    this.lifeSpan,
    this.indoor,
    this.lap,
    this.altNames,
    this.adaptability,
    this.affectionLevel,
    this.childFriendly,
    this.dogFriendly,
    this.energyLevel,
    this.grooming,
    this.healthIssues,
    this.intelligence,
    this.sheddingLevel,
    this.socialNeeds,
    this.strangerFriendly,
    this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.wikipediaUrl,
    this.hypoallergenic,
    this.referenceImageId,
  });

  Breed copyWith({
    Weight? weight,
    String? id,
    String? name,
    String? cfaUrl,
    //String? vetstreetUrl,
    String? vcahospitalsUrl,
    String? temperament,
    String? origin,
    String? countryCodes,
    String? countryCode,
    String? description,
    String? lifeSpan,
    int? indoor,
    int? lap,
    String? altNames,
    int? adaptability,
    int? affectionLevel,
    int? childFriendly,
    int? dogFriendly,
    int? energyLevel,
    int? grooming,
    int? healthIssues,
    int? intelligence,
    int? sheddingLevel,
    int? socialNeeds,
    int? strangerFriendly,
    int? vocalisation,
    int? experimental,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    int? suppressedTail,
    int? shortLegs,
    String? wikipediaUrl,
    int? hypoallergenic,
    String? referenceImageId,
  }) =>
      Breed(
        weight: weight ?? this.weight,
        id: id ?? this.id,
        name: name ?? this.name,
        cfaUrl: cfaUrl ?? this.cfaUrl,
        //vetstreetUrl: vetstreetUrl ?? this.vetstreetUrl,
        vcahospitalsUrl: vcahospitalsUrl ?? this.vcahospitalsUrl,
        temperament: temperament ?? this.temperament,
        origin: origin ?? this.origin,
        countryCodes: countryCodes ?? this.countryCodes,
        countryCode: countryCode ?? this.countryCode,
        description: description ?? this.description,
        lifeSpan: lifeSpan ?? this.lifeSpan,
        indoor: indoor ?? this.indoor,
        lap: lap ?? this.lap,
        altNames: altNames ?? this.altNames,
        adaptability: adaptability ?? this.adaptability,
        affectionLevel: affectionLevel ?? this.affectionLevel,
        childFriendly: childFriendly ?? this.childFriendly,
        dogFriendly: dogFriendly ?? this.dogFriendly,
        energyLevel: energyLevel ?? this.energyLevel,
        grooming: grooming ?? this.grooming,
        healthIssues: healthIssues ?? this.healthIssues,
        intelligence: intelligence ?? this.intelligence,
        sheddingLevel: sheddingLevel ?? this.sheddingLevel,
        socialNeeds: socialNeeds ?? this.socialNeeds,
        strangerFriendly: strangerFriendly ?? this.strangerFriendly,
        vocalisation: vocalisation ?? this.vocalisation,
        experimental: experimental ?? this.experimental,
        hairless: hairless ?? this.hairless,
        natural: natural ?? this.natural,
        rare: rare ?? this.rare,
        rex: rex ?? this.rex,
        suppressedTail: suppressedTail ?? this.suppressedTail,
        shortLegs: shortLegs ?? this.shortLegs,
        wikipediaUrl: wikipediaUrl ?? this.wikipediaUrl,
        hypoallergenic: hypoallergenic ?? this.hypoallergenic,
        referenceImageId: referenceImageId ?? this.referenceImageId,
      );

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);
  Map<String, dynamic> toJson() => _$BreedToJson(this);
}
