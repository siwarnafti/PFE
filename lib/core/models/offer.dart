class Offer {
  final String title;
  final String company;
  final String description;
  final String imageUrl;
  final double salary;
  final String location;
  final List<String> category;
  final String id;
  bool isFavorite;

  Offer({
    required this.title,
    required this.description,
    required this.company,
    required this.imageUrl,
    required this.salary,
    required this.location,
    required this.category,
    required this.id,
    this.isFavorite = false,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      title: json['title'],
      description: json['description'],
      company: json['company'],
      imageUrl: json['imageUrl'],
      salary: json['salary'].toDouble(),
      location: json['location'],
      category: List<String>.from(json['category']),
      id: json['id'],
      isFavorite: json['isFavorite'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'company': company,
      'imageUrl': imageUrl,
      'salary': salary,
      'location': location,
      'category': category,
      'id': id,
      'isFavorite': isFavorite,
    };
  }
}
