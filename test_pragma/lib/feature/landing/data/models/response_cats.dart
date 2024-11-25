import 'package:json_annotation/json_annotation.dart';
import 'package:test_pragma/feature/landing/data/models/breed_model.dart';
part 'response_cats.g.dart';

@JsonSerializable()
class ResponseCats {
  @JsonKey(includeIfNull: false)
  final List<Breed>? breeds;
  @JsonKey(includeIfNull: false)
  final String? id;
  @JsonKey(includeIfNull: false)
  final String? url;
  @JsonKey(includeIfNull: false)
  final int? width;
  @JsonKey(includeIfNull: false)
  final int? height;

  ResponseCats({
    this.breeds,
    this.id,
    this.url,
    this.width,
    this.height,
  });

  ResponseCats copyWith({
    List<Breed>? breeds,
    String? id,
    String? url,
    int? width,
    int? height,
  }) =>
      ResponseCats(
        breeds: breeds ?? this.breeds,
        id: id ?? this.id,
        url: url ?? this.url,
        width: width ?? this.width,
        height: height ?? this.height,
      );

  factory ResponseCats.fromJson(Map<String, dynamic> json) =>
      _$ResponseCatsFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseCatsToJson(this);
}
