// To parse this JSON data, do
//
//     final workCategoryModel = workCategoryModelFromJson(jsonString);

import 'dart:convert';

WorkCategoryModel workCategoryModelFromJson(
        String str) =>
    WorkCategoryModel.fromJson(json.decode(str));

String workCategoryModelToJson(
        WorkCategoryModel data) =>
    json.encode(data.toJson());

class WorkCategoryModel {
  int? status;
  String? message;
  List<WorkCategory>? workCategories;

  WorkCategoryModel({
    this.status,
    this.message,
    this.workCategories,
  });

  factory WorkCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      WorkCategoryModel(
        status: json["status"],
        message: json["message"],
        workCategories: json["work_categories"] ==
                null
            ? []
            : List<WorkCategory>.from(json[
                    "work_categories"]!
                .map((x) =>
                    WorkCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "work_categories": workCategories == null
            ? []
            : List<dynamic>.from(workCategories!
                .map((x) => x.toJson())),
      };
}

class WorkCategory {
  int? workCategoryId;
  String? category;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isSelected;

  WorkCategory({
    this.workCategoryId,
    this.category,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.isSelected,
  });

  factory WorkCategory.fromJson(
          Map<String, dynamic> json) =>
      WorkCategory(
        workCategoryId: json["work_category_id"],
        category: json["category"],
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
        "work_category_id": workCategoryId,
        "category": category,
        "status": status,
        "created_at":
            createdAt?.toIso8601String(),
        "updated_at":
            updatedAt?.toIso8601String(),
        "isSelected": isSelected,
      };
}
