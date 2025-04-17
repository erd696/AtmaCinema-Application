import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:tubes/entity/JadwalTayang.dart';

class JadwaltayangClient {
  static const String _baseUrl = '10.0.2.2:8000';
  static const String _endpoint = '/api/jadwal_tayang';

  static Future<List<Jadwaltayang>> fetchAllJadwal(String token) async {
    try {
      final uri = Uri.http(_baseUrl, _endpoint);
      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json',
        },
      );

      print("Response Status: ${response.statusCode}");
      print("Response Body: ${response.body}");

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch Jadwal: ${response.statusCode} - ${response.reasonPhrase}');
      }

      final decoded = json.decode(response.body);

      if (!decoded.containsKey('data')) {
        throw Exception("Invalid response structure: 'data' key missing");
      }

      Iterable jsonList = decoded['data'];
      return jsonList.map((data) => Jadwaltayang.fromJson(data)).toList();
    } catch (e) {
      return Future.error('Error fetching JadwalTayang: $e');
    }
  }
}
