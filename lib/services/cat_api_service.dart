import 'package:dio/dio.dart';
import 'package:flutter_architecture/entities/cat_api_response.dart';

class CatApiService {
  CatApiService._();
  static final instance = CatApiService._();

  final url = "https://thatcopy.pw/catapi/rest/";

  Future<CatApiResponse> getCatImage() async {
    final response = await Dio().get(url);
    return CatApiResponse.fromJson(response.data);
  }
}