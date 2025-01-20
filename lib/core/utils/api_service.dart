import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String baseUrl = 'https://ott-details.p.rapidapi.com/';

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint, }) async {
    var response = await _dio.get(
      '$baseUrl$endPoint',
      options: Options(
        headers: {
          "x-rapidapi-key":"324483c7fcmsh5b3f843fb69ca12p117511jsn9dee2f2f1b22",
        },
      ),
    );
    return response.data;
  }
}
