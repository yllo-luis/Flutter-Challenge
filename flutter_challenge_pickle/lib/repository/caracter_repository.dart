import 'package:flutter_challenge_pickle/models/caracter_model.dart';
import 'package:flutter_challenge_pickle/service/caracter_service.dart';

class CaracterRepository {
  CaracterService caracterService = CaracterService();

  Future<CaracterModel?> getCaractersPerPage(String page) {
    return caracterService.getCaractersPerPage(page);
  }

  Future<CaracterModel?> getCaracterPerName(String name) {
    return caracterService.getCaractersPerName(name);
  }

  Future<List<CaracterModel>> getCaracterPerSpecies(String species) {
    return caracterService.getCaracterPerSpecies(species);
  }

  Future<List<CaracterModel>> getCaracterPerStatus(String status) {
    return caracterService.getCaracterPerStatus(status);
  }

  Future<CaracterModel?> getCaracterPerArgument(
      String? name, String? status, String? gender, String? species) {
    return caracterService.getCaracterPerArgument(
        name, status, gender, species);
  }
}
