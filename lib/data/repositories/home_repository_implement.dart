import 'package:fbapp/domain/repositories/home_repository.dart';

import '../services/network_services/api_client/api_client.dart';

class HomeRepositoryImplement implements HomeRepository {
  HomeRepositoryImplement(this._apiClient);

  final ApiClient _apiClient;
}
