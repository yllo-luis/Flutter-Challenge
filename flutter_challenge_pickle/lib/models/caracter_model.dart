// To parse this JSON data, do
//
//     final caracterModel = caracterModelFromMap(jsonString);

import 'dart:convert';

class CaracterModel {
  CaracterModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final Location? origin;
  final Location? location;
  final String? image;
  final List<String>? episode;
  final String? url;
  final DateTime? created;

  factory CaracterModel.fromJson(Map<String, dynamic> json) {
    return CaracterModel(
        id: json['id'],
        image: json['image'],
        created: json['created'],
        episode: json['episode'],
        gender: json['gender'],
        location: json['location'],
        name: json['name'],
        origin: json['origin'],
        species: json['species'],
        status: json['status'],
        type: json['type'],
        url: json['url']);
  }

  String toJson() => json.encode(toMap());

  factory CaracterModel.fromMap(Map<String, dynamic> json) => CaracterModel(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: Location.fromMap(json["origin"]),
        location: Location.fromMap(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "status": status,
        "species": species,
        "type": type,
        "gender": gender,
        "origin": origin!.toMap(),
        "location": location!.toMap(),
        "image": image,
        "episode": List<dynamic>.from(episode!.map((x) => x)),
        "url": url,
        "created": created!.toIso8601String(),
      };
}

class Location {
  Location({
    this.name,
    this.url,
  });

  final String? name;
  final String? url;

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}
