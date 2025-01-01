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
          "x-rapidapi-key":"f30a0676c3msh9d5c5bf9a1ec3e8p1cea5bjsn006e699e2749",
        },
      ),
    );
    return response.data;
  }
}
