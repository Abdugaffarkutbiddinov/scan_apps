import 'dart:convert';

import 'package:find_apps/features/application_scan/domain/entities/app.dart';

// For this project we don`t need json conversion logic yet but for future
// purposes i decided to implement(e.g to store in local storage or consume api)

// TODO how to store icon and installDate
List<AppModel> appListModelFromJson(String str) =>
    List<AppModel>.from(
        json.decode(str).map((x) => AppModel.fromJson(x)));

String appListToJson(List<AppModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AppModel extends App {
  AppModel(
      {required name, required icon, required installDate})
      : super(name: name,icon: icon,installDate: installDate);

  factory AppModel.fromJson(Map<String, dynamic> json) {
    return AppModel(
      name: json['name'] as String,
      icon: json['icon'] as String,
      installDate: json['installDate'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "icon": icon,
    "installDate": installDate
  };

  static List<AppModel> appsFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return AppModel.fromJson(data);
    }).toList();
  }
}
