import 'dart:developer' as developer;
import 'dart:convert';

import 'package:flutter_challenge_pickle/models/episode_model.dart';
import 'package:flutter_challenge_pickle/utils/constants.dart';
import 'package:http/http.dart' as Http;

class EpisodeService {
  Future<List<EpisodeModel>?> getAllEpisodes({required int page}) async {
    List<EpisodeModel>? results = [];

    try {
      Http.Response response =
          await Http.get(Uri.parse(Constants().getEpisodes + "$page=page"));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty == true) {
          List<dynamic> resultsJson = json.decode(response.body);
          resultsJson.forEach((element) {
            results.add(element);
          });
        }
      } else {
        String bodyJson = response.body;
        bodyJson = json.decode(bodyJson);
        developer.log(
            "Falha em requisição getAllEpisodes statusCode -> ${response.statusCode} retorno -> $bodyJson");
      }
    } catch (error, stackTrace) {
      developer.log(
          "Exception getAllEpisodes ${error.toString()} stackTrace -> ${stackTrace.toString()}");
    }
  }

  Future<EpisodeModel?> searchEpisodeByName({required String name}) async {
    EpisodeModel? result;

    try {
      Http.Response response =
          await Http.get(Uri.parse(Constants().getEpisodes + "?name=$name"));
      if (response.statusCode == 200) {
        String bodyResponse = response.body;
        bodyResponse = json.decode(bodyResponse);
        result = EpisodeModel.fromJson(bodyResponse);
        return result;
      } else {
        String bodyJson = response.body;
        bodyJson = json.decode(bodyJson);
        developer.log(
            "Falha em requisição searchEpisodeByName statusCode -> ${response.statusCode} retorno -> $bodyJson");
      }
    } catch (error, stackTrace) {
      developer.log(
          "Exception searchEpisodeByName ${error.toString()} stackTrace -> ${stackTrace.toString()}");
    }
    return result;
  }

  Future<EpisodeModel?> searchEpisodeByNumber({required int number}) async {
    EpisodeModel? result;

    try {
      Http.Response response = await Http.get(
          Uri.parse(Constants().getEpisodes + "?episode=$number"));
      if (response.statusCode == 200) {
        String bodyResponse = response.body;
        bodyResponse = json.decode(bodyResponse);
        result = EpisodeModel.fromJson(bodyResponse);
        return result;
      } else {
        String bodyJson = response.body;
        bodyJson = json.decode(bodyJson);
        developer.log(
            "Falha em requisição searchEpisodeByNumber statusCode -> ${response.statusCode} retorno -> $bodyJson");
      }
    } catch (error, stackTrace) {
      developer.log(
          "Exception searchEpisodeByNumber ${error.toString()} stackTrace -> ${stackTrace.toString()}");
    }
    return result;
  }
}
