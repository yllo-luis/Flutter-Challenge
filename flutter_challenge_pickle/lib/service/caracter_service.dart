import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter_challenge_pickle/models/caracter_model.dart';
import 'package:flutter_challenge_pickle/utils/constants.dart';

import 'package:http/http.dart' as Http;

class CaracterService {
  Future<List<CaracterModel>> getCaractersPerPage(String page) async {
    List<CaracterModel> results = [];
    try {
      Uri url = Uri.parse(Constants().getCaracters + "?page=$page");
      var response = await Http.get(url);
      if (response.statusCode == 200) {
        var responseBody = response.body;
        if (responseBody.isNotEmpty == true) {
          List<dynamic> info = jsonDecode(responseBody);
          if (info.length > 0) {
            info.forEach((element) {
              results.add(CaracterModel.fromJson(element));
            });
            return results;
          }
        }
      } else {
        developer.log(
            "Falha em requisição getCaractersPerPage: StatusCode -> ${response.statusCode}");
      }
    } catch (e, stackTrace) {
      developer.log(
          "Falha em requisição getCaractersPerPage: exception -> $e stackTrace -> $stackTrace");
    }
    return results;
  }

  Future<CaracterModel?> getCaractersPerName(String name) async {
    CaracterModel? result;
    try {
      Uri url = Uri.parse(Constants().getCaracters + "?name=$name");
      var response = await Http.get(url);
      if (response.statusCode == 200) {
        var responseBody = response.body;
        if (responseBody.isNotEmpty == true) {
          result = CaracterModel.fromJson(jsonDecode(responseBody));
          return result;
        } else {
          developer.log(
              "Falha em requisição getCaractersPerName: StatusCode -> ${response.statusCode}");
        }
      }
    } catch (e, stackTrace) {
      developer.log(
          "Falha em requisição getCaractersPerName: exception -> $e stackTrace -> $stackTrace");
    }
    return result;
  }

  Future<List<CaracterModel>> getCaracterPerSpecies(String species) async {
    List<CaracterModel> results = [];
    try {
      Uri url = Uri.parse(Constants().getCaracters + "?species=$species");
      var response = await Http.get(url);
      if (response.statusCode == 200) {
        var responseBody = response.body;
        if (responseBody.isNotEmpty == true) {
          List<dynamic> info = jsonDecode(responseBody);
          if (info.length > 0) {
            info.forEach((element) {
              results.add(CaracterModel.fromJson(element));
            });
            return results;
          }
        }
      } else {
        developer.log(
            "Falha em requisição getCaractersPerSpecies: StatusCode -> ${response.statusCode}");
      }
    } catch (e, stackTrace) {
      developer.log(
          "Falha em requisição getCaractersPerSpecies: exception -> $e stackTrace -> $stackTrace");
    }
    return results;
  }

  Future<List<CaracterModel>> getCaracterPerStatus(String status) async {
    List<CaracterModel> results = [];
    try {
      Uri url = Uri.parse(Constants().getCaracters + "?status=$status");
      var response = await Http.get(url);
      if (response.statusCode == 200) {
        var responseBody = response.body;
        if (responseBody.isNotEmpty == true) {
          List<dynamic> info = jsonDecode(responseBody);
          if (info.length > 0) {
            info.forEach((element) {
              results.add(CaracterModel.fromJson(element));
            });
            return results;
          }
        }
      } else {
        developer.log(
            "Falha em requisição getCaractersPerStatus: StatusCode -> ${response.statusCode}");
      }
    } catch (e, stackTrace) {
      developer.log(
          "Falha em requisição getCaractersPerStatus: exception -> $e stackTrace -> $stackTrace");
    }
    return results;
  }

  Future<CaracterModel?> getCaracterPerArgument(
      String? name, String? status, String? gender, String? species) async {
    CaracterModel? result;
    try {
      Uri url = Uri.parse(Constants().getCaracters +
          "${name != null ? "?name=$name" : ""}" +
          "${status != null ? "&status=$status" : ""}" +
          "${gender != null ? "&gender=$gender" : ""}" +
          "${species != null ? "&species=$species" : ""}");
      var response = await Http.get(url);
      if (response.statusCode == 200) {
        var responseBody = response.body;
        if (responseBody.isNotEmpty == true) {
          result = CaracterModel.fromJson(jsonDecode(responseBody));
          return result;
        } else {
          developer.log(
              "Falha em requisição getCaractersPerName: StatusCode -> ${response.statusCode}");
        }
      }
    } catch (e, stackTrace) {
      developer.log(
          "Falha em requisição getCaractersPerName: exception -> $e stackTrace -> $stackTrace");
    }
    return result;
  }
}
