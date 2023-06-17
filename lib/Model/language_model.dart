// To parse this JSON data, do
//
//     final languageModelList = languageModelListFromJson(jsonString);

import 'dart:convert';

LanguageModelList languageModelListFromJson(
        String str) =>
    LanguageModelList.fromJson(json.decode(str));

String languageModelListToJson(
        LanguageModelList data) =>
    json.encode(data.toJson());

class LanguageModelList {
  int? status;
  String? message;
  List<Language>? languages;

  LanguageModelList({
    this.status,
    this.message,
    this.languages,
  });

  factory LanguageModelList.fromJson(
          Map<String, dynamic> json) =>
      LanguageModelList(
        status: json["status"],
        message: json["message"],
        languages: json["languages"] == null
            ? []
            : List<Language>.from(
                json["languages"]!.map(
                    (x) => Language.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "languages": languages == null
            ? []
            : List<dynamic>.from(languages!
                .map((x) => x.toJson())),
      };
}

class Language {
  int? languageId;
  String? language;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isSelected;

  Language({
    this.languageId,
    this.language,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.isSelected,
  });

  factory Language.fromJson(
          Map<String, dynamic> json) =>
      Language(
        languageId: json["language_id"],
        language: json["language"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        isSelected: json["isSelected"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "language_id": languageId,
        "language": language,
        "status": status,
        "created_at":
            createdAt?.toIso8601String(),
        "updated_at":
            updatedAt?.toIso8601String(),
        "isSelected": isSelected,
      };
}
