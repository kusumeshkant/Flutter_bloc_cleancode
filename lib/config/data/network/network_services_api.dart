// ignore_for_file: constant_pattern_never_matches_value_type

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc_ca/config/data/exceptions/app_exceptions.dart';
import 'package:flutter_bloc_ca/config/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String uri) async {
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(uri)).timeout(const Duration(seconds: 3));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternateException('');
    } on TimeoutException {
      throw FetchDataException("Time Out Try again");
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> postAPi(String uri, var data) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .post(Uri.parse(uri), body: data)
          .timeout(const Duration(seconds: 3));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw NoInternateException('');
    } on TimeoutException {
      throw FetchDataException("Time Out Try again");
    }

    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 401:
        throw UnAuthorisedException("");

      case 500:
        return FetchDataException(
            "Error communicationg with server ${response.statusCode}");
    }
  }
}
