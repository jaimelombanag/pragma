class Cat {
  final String? name;
  final String? origin;
  final int? intelligence;
  final String? imageUrl;
  final String? description;
  final String? wikipediaUrl;
  final String? temperament;
  final String? lifeSpan;
  final int? energyLevel;

  Cat({
    this.name,
    this.origin,
    this.intelligence,
    this.imageUrl,
    this.description,
    this.wikipediaUrl,
    this.temperament,
    this.lifeSpan,
    this.energyLevel,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name ?? '',
      'origin': origin ?? '',
      'intelligence': intelligence ?? 0,
      'imageUrl': imageUrl ?? '',
      'description': description ?? '',
      'wikipediaUrl': wikipediaUrl ?? '',
      'temperament': temperament ?? '',
      'lifeSpan': lifeSpan ?? '',
      'energyLevel': energyLevel ?? 0,
    };
  }

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      name: json['name'],
      origin: json['origin'],
      intelligence: json['intelligence'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      wikipediaUrl: json['wikipediaUrl'],
      temperament: json['temperament'],
      lifeSpan: json['lifeSpan'],
      energyLevel: json['energyLevel'],
    );
  }
}
