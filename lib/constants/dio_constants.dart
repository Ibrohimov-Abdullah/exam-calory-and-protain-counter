import 'package:flutter/cupertino.dart';

@immutable
sealed class ApiConstants{

  /// api constants properties

  static const durationTime = Duration(seconds: 10);
  // static const baseUrl = "https://dummyjson.com";
  static const baseUrl = "https://65e892d74bb72f0a9c4fcca0.mockapi.io";
  static const apiProducts = "/products";
  static const contentType = "application/json";
  static bool validate(int? statusCode) => statusCode! <= 205;
}