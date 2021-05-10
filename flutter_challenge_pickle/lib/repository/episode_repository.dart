import 'package:flutter_challenge_pickle/models/episode_model.dart';
import 'package:flutter_challenge_pickle/service/episode_service.dart';

class EpisodeRepository {
  EpisodeService episodeService = EpisodeService();

  Future<List<EpisodeModel>?> getAllEpisodes({required int page}) {
    return episodeService.getAllEpisodes(page: page);
  }

  Future<EpisodeModel?> searchEpisodeByName({required String episodeName}) {
    return episodeService.searchEpisodeByName(name: episodeName);
  }

  Future<EpisodeModel?> searchEpisodeByNumber({required int epNumber}) {
    return episodeService.searchEpisodeByNumber(number: epNumber);
  }
}
