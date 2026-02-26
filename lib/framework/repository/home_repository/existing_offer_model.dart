class ExistingOffer {
  int id;
  String name;
  String image;
  String subtitle;
  String offerTitle;
  bool isOpen;

  ExistingOffer({
    required this.id,
    required this.name,
    required this.image,
    required this.subtitle,
    required this.offerTitle,
    required this.isOpen,
  });

  ExistingOffer copyWith({
    int? id,
    String? name,
    String? image,
    String? subtitle,
    String? offerTitle,
    bool? isOpen,
  }) =>
      ExistingOffer(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        subtitle: subtitle ?? this.subtitle,
        offerTitle: offerTitle ?? this.offerTitle,
        isOpen: isOpen ?? this.isOpen,
      );

  factory ExistingOffer.fromJson(Map<String, dynamic> json) => ExistingOffer(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        subtitle: json["subtitle"],
        offerTitle: json["offer_title"],
        isOpen: json["isOpen"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "subtitle": subtitle,
        "offer_title": offerTitle,
        "isOpen": isOpen,
      };
}
