// To parse this JSON data, do
//
//     final getByIdSubServicesModel = getByIdSubServicesModelFromJson(jsonString);

import 'dart:convert';

GetProviderServiceCategoryModel
    getByIdSubServicesModelFromJson(String str) =>
        GetProviderServiceCategoryModel.fromJson(
            json.decode(str));

String getByIdSubServicesModelToJson(
        GetProviderServiceCategoryModel data) =>
    json.encode(data.toJson());

class GetProviderServiceCategoryModel {
  int? status;
  String? message;
  List<GetProviderServiceCategory>? services;

  GetProviderServiceCategoryModel({
    this.status,
    this.message,
    this.services,
  });

  factory GetProviderServiceCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      GetProviderServiceCategoryModel(
        status: json["status"],
        message: json["message"],
        services: json["services"] == null
            ? []
            : List<GetProviderServiceCategory>.from(
                json["services"]!.map((x) =>
                    GetProviderServiceCategory
                        .fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "services": services == null
            ? []
            : List<dynamic>.from(
                services!.map((x) => x.toJson())),
      };
}

class GetProviderServiceCategory {
  int? serviceId;
  String? serviceName;
  int? categoryId;
  int? display;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic userId;
  bool? isSelected;
  GetProviderServiceCategory({
    this.serviceId,
    this.serviceName,
    this.categoryId,
    this.display,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.userId,
    this.isSelected,
  });

  factory GetProviderServiceCategory.fromJson(
          Map<String, dynamic> json) =>
      GetProviderServiceCategory(
        serviceId: json["service_id"],
        serviceName: json["service_name"],
        categoryId: json["category_id"],
        display: json["display"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        userId: json["user_id"],
        isSelected: json["isSelected"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "service_id": serviceId,
        "service_name": serviceName,
        "category_id": categoryId,
        "display": display,
        "status": status,
        "created_at":
            createdAt?.toIso8601String(),
        "updated_at":
            updatedAt?.toIso8601String(),
        "user_id": userId,
        "isSelected": isSelected,
      };
}
