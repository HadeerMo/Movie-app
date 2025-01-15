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
          "x-rapidapi-key":"d20ebc8e9dmsh33c7d333552f8b4p16e489jsnc3f3357da4b0",
        },
      ),
    );
    return response.data;
  }
}
