// To parse this JSON data, do
//
//     final searchedmodel = searchedmodelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Searchedmodel> searchedmodelFromJson(String str) => List<Searchedmodel>.from(json.decode(str).map((x) => Searchedmodel.fromJson(x)));

String searchedmodelToJson(List<Searchedmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Searchedmodel {
  String searchProduct;
  String calories;
  String protain;
  String id;

  Searchedmodel({
    required this.searchProduct,
    required this.calories,
    required this.protain,
    required this.id,
  });

  factory Searchedmodel.fromJson(Map<String, dynamic> json) => Searchedmodel(
    searchProduct: json["searchProduct"],
    calories: json["calories"],
    protain: json["protain"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "searchProduct": searchProduct,
    "calories": calories,
    "protain": protain,
    "id": id,
  };
}
