import 'package:json_annotation/json_annotation.dart';
part 'weight_model.g.dart';

@JsonSerializable()
class Weight {
  @JsonKey(includeIfNull: false)
  final String? imperial;
  @JsonKey(includeIfNull: false)
  final String? metric;

  Weight({
    this.imperial,
    this.metric,
  });

  Weight copyWith({
    String? imperial,
    String? metric,
  }) =>
      Weight(
        imperial: imperial ?? this.imperial,
        metric: metric ?? this.metric,
      );

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
  Map<String, dynamic> toJson() => _$WeightToJson(this);
}
