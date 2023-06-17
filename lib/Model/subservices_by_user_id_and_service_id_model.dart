// To parse this JSON data, do
//
//     final subservicesByUserIdAndServiceId = subservicesByUserIdAndServiceIdFromJson(jsonString);

import 'dart:convert';

SubservicesByUserIdAndServiceIdModel
    subservicesByUserIdAndServiceIdFromJson(
            String str) =>
        SubservicesByUserIdAndServiceIdModel
            .fromJson(json.decode(str));

String subservicesByUserIdAndServiceIdToJson(
        SubservicesByUserIdAndServiceIdModel
            data) =>
    json.encode(data.toJson());

class SubservicesByUserIdAndServiceIdModel {
  int? status;
  String? message;
  List<SubService>? subServices;

  SubservicesByUserIdAndServiceIdModel({
    this.status,
    this.message,
    this.subServices,
  });

  factory SubservicesByUserIdAndServiceIdModel.fromJson(
          Map<String, dynamic> json) =>
      SubservicesByUserIdAndServiceIdModel(
        status: json["status"],
        message: json["message"],
        subServices: json["sub_services"] == null
            ? []
            : List<SubService>.from(
                json["sub_services"]!.map((x) =>
                    SubService.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "sub_services": subServices == null
            ? []
            : List<dynamic>.from(subServices!
                .map((x) => x.toJson())),
      };
}

class SubService {
  int? subServiceId;
  String? serviceName;
  String? serviceImage;
  int? servicePrice;
  dynamic selectedService;
  String? description;
  dynamic addOnService;
  dynamic moreInformation;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? userId;
  int? categoryId;
  int? serviceId;

  SubService({
    this.subServiceId,
    this.serviceName,
    this.serviceImage,
    this.servicePrice,
    this.selectedService,
    this.description,
    this.addOnService,
    this.moreInformation,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.userId,
    this.categoryId,
    this.serviceId,
  });

  factory SubService.fromJson(
          Map<String, dynamic> json) =>
      SubService(
        subServiceId: json["sub_service_id"],
        serviceName: json["service_name"],
        serviceImage: json["service_image"],
        servicePrice: json["service_price"],
        selectedService: json["selected_service"],
        description: json["description"],
        addOnService: json["add_on_service"],
        moreInformation: json["more_information"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        userId: json["user_id"],
        categoryId: json["category_id"],
        serviceId: json["service_id"],
      );

  Map<String, dynamic> toJson() => {
        "sub_service_id": subServiceId,
        "service_name": serviceName,
        "service_image": serviceImage,
        "service_price": servicePrice,
        "selected_service": selectedService,
        "description": description,
        "add_on_service": addOnService,
        "more_information": moreInformation,
        "status": status,
        "created_at":
            createdAt?.toIso8601String(),
        "updated_at":
            updatedAt?.toIso8601String(),
        "user_id": userId,
        "category_id": categoryId,
        "service_id": serviceId,
      };
}
