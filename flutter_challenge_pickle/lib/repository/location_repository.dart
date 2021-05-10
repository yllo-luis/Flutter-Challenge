import 'package:flutter_challenge_pickle/models/location_model.dart';
import 'package:flutter_challenge_pickle/service/location_service.dart';

class LocationRepository {
  LocationService _service = LocationService();

  Future<List<LocationModel>?> getAllLocations({required int page}) {
    return _service.getAllLocations(page: page);
  }

  Future<LocationModel?> getLocationByName({required String name}) {
    return _service.getLocationByName(locationName: name);
  }
}
