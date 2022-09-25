import 'package:flutter/material.dart';

class InitVariable {
  final String appName = "WHA";

  // Base URL
  final String baseUrl = "https://hypershop.com.bd/";
  // API Base URL
  final String baseApi = "https://hypershop.com.bd/api/";

  // API Url
  

  // API Url auth

  Color bgColorLight = Colors.white;
  Color bgColorDark = Colors.black;
  Color thameColor = Color.fromRGBO(1, 105, 57, 1);

  Uri apiUri(String url) {
    return Uri.parse(baseApi + url);
  }
}
