// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Offer> offersFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Offer>.from(jsonData.map((x) => Offer.fromJson(x)));
}

String welcomeToJson(List<Offer> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class Offer {
  int id;
  String title;
  String description;
  String pictures;
  String petSitterName;
  String creationDate;

  Offer({
    this.id,
    this.title,
    this.description,
    this.pictures,
    this.petSitterName,
    this.creationDate,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => new Offer(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        pictures: json["pictures"],
        petSitterName: json["petsitterName"],
        creationDate: json["creationDate"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "pictures": pictures,
        "petsitterName": petSitterName,
        "creationDate": creationDate,
      };
}
