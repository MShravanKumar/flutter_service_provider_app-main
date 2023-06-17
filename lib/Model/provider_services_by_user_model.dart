// To parse this JSON data, do
//
//     final providerServicesByuserModel = providerServicesByuserModelFromJson(jsonString);

import 'dart:convert';

ProviderServicesByuserModel
    providerServicesByuserModelFromJson(
            String str) =>
        ProviderServicesByuserModel.fromJson(
            json.decode(str));

String providerServicesByuserModelToJson(
        ProviderServicesByuserModel data) =>
    json.encode(data.toJson());

class ProviderServicesByuserModel {
  int? status;
  String? message;
  List<ProviderService>? providerServices;

  ProviderServicesByuserModel({
    this.status,
    this.message,
    this.providerServices,
  });

  factory ProviderServicesByuserModel.fromJson(
          Map<String, dynamic> json) =>
      ProviderServicesByuserModel(
        status: json["status"],
        message: json["message"],
        providerServices:
            json["provider_services"] == null
                ? []
                : List<ProviderService>.from(
                    json["provider_services"]!
                        .map((x) =>
                            ProviderService
                                .fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "provider_services": providerServices ==
                null
            ? []
            : List<dynamic>.from(providerServices!
                .map((x) => x.toJson())),
      };
}

class ProviderService {
  int? serviceId;
  String? serviceName;
  int? categoryId;
  int? display;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic userId;

  ProviderService({
    this.serviceId,
    this.serviceName,
    this.categoryId,
    this.display,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.userId,
  });

  factory ProviderService.fromJson(
          Map<String, dynamic> json) =>
      ProviderService(
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
      };
}
