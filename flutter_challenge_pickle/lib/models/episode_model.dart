// To parse this JSON data, do
//
//     final episodeModel = episodeModelFromMap(jsonString);

import 'dart:convert';

class EpisodeModel {
  EpisodeModel({
    this.id,
    this.name,
    this.airDate,
    this.episode,
    this.characters,
    this.url,
    this.created,
  });

  final int? id;
  final String? name;
  final String? airDate;
  final String? episode;
  final List<String>? characters;
  final String? url;
  final DateTime? created;

  factory EpisodeModel.fromJson(String str) =>
      EpisodeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EpisodeModel.fromMap(Map<String, dynamic> json) => EpisodeModel(
        id: json["id"],
        name: json["name"],
        airDate: json["air_date"],
        episode: json["episode"],
        characters: List<String>.from(json["characters"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "air_date": airDate,
        "episode": episode,
        "characters": List<dynamic>.from(characters!.map((x) => x)),
        "url": url,
        "created": created!.toIso8601String(),
      };
}
