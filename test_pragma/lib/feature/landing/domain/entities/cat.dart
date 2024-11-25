class Cat {
  final String? name;
  final String? origin;
  final int? intelligence;
  final String? imageUrl;
  final String? description;

  Cat({
    this.name,
    this.origin,
    this.intelligence,
    this.imageUrl,
    this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name ?? '',
      'origin': origin ?? '',
      'intelligence': intelligence ?? '',
      'imageUrl': imageUrl ?? '',
      'description': description ?? '',
    };
  }

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      name: json['name'],
      origin: json['origin'],
      intelligence: json['intelligence'],
      imageUrl: json['imageUrl'],
      description: json['description'],
    );
  }
}
