class CatModel {
  final String name;
  final String origin;
  final String intelligence;
  final String imageUrl;
  final String description;

  CatModel({
    required this.name,
    required this.origin,
    required this.intelligence,
    required this.imageUrl,
    required this.description,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) {
    return CatModel(
      name: json['name'],
      origin: json['origin'],
      intelligence: json['intelligence'] ?? 'Desconocida',
      imageUrl: json['image']['url'],
      description: json['description'] ?? 'No disponible',
    );
  }
}
