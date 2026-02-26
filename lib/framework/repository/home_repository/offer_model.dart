class Offer {
  String title;
  String code;

  Offer({
    required this.title,
    required this.code,
  });

  Offer copyWith({
    String? title,
    String? code,
  }) =>
      Offer(
        title: title ?? this.title,
        code: code ?? this.code,
      );

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        title: json["title"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "code": code,
      };
}
