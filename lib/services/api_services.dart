import 'package:dio/dio.dart';
import 'package:green_house_app/services/network_client.dart';

class ApiService {
  final NetworkClient networkClient;

  ApiService({required this.networkClient});

  Future<Response<dynamic>> getProfileData() {
    return networkClient.get('api/profile', {});
  }

  Future<Response<dynamic>> getHolidays(Map<String, Object> params) {
    return networkClient.post('api/Create-Holiday-Plan', params);
  }
}
