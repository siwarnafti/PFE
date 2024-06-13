class Company {
  final String id;
  final String name;
  final String imageUrl;
  final int openSlots;

  Company({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.openSlots,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      openSlots: json['openSlots'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'openSlots': openSlots,
    };
  }
}
