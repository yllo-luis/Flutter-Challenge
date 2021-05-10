import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter_challenge_pickle/models/location_model.dart';
import 'package:flutter_challenge_pickle/utils/constants.dart';
import 'package:http/http.dart' as Http;

class LocationService {
  Future<List<LocationModel>?> getAllLocations({required int page}) async {
    List<LocationModel>? results = [];

    try {
      Http.Response response =
          await Http.get(Uri.parse(Constants().getLocation + "page=$page"));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty == true) {
          List<dynamic> bodyList = json.decode(response.body);
          bodyList.forEach((element) {
            results.add(element);
          });
          return results;
        }
      } else {
        String bodyJson = response.body;
        bodyJson = json.decode(bodyJson);
        developer.log(
            "Falha em requisição getAllLocations statusCode -> ${response.statusCode} retorno -> $bodyJson");
      }
    } catch (error, stackTrace) {
      developer.log(
          "Exception getAllLocations ${error.toString()} stackTrace -> ${stackTrace.toString()}");
    }
  }

  Future<LocationModel?> getLocationByName(
      {required String locationName}) async {
    LocationModel? location;

    try {
      Http.Response response = await Http.get(
          Uri.parse(Constants().getLocation + "?name=$locationName"));
      if (response.statusCode == 200) {
        String responseJson = response.body;
        location = LocationModel.fromJson(json.decode(responseJson));
        return location;
      } else {
        String bodyJson = response.body;
        bodyJson = json.decode(bodyJson);
        developer.log(
            "Falha em requisição getLocationByName statusCode -> ${response.statusCode} retorno -> $bodyJson");
      }
    } catch (error, stackTrace) {
      developer.log(
          "Exception getLocationByName ${error.toString()} stackTrace -> ${stackTrace.toString()}");
    }
  }
}
