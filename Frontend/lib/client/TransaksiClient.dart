import 'dart:convert';
import 'package:http/http.dart';

class TransaksiClient {
  static final String baseUrl = '10.0.2.2:8000';
  static final String endpoint = '/api/transaksi';

  static Future<int?> storeTransaksi(
      int? idUser, double? totalHarga, String? status, String? token) async {
    print('Sending POST request to $baseUrl$endpoint');
    print(
        'Headers: {Content-Type: application/json, Authorization: Bearer $token}');
    print('Body: ${json.encode({
          'id_user': idUser,
          'total_harga': totalHarga,
          'status': status
        })}');

    try {
      final response = await post(
        Uri.http(baseUrl, endpoint),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'id_user': idUser,
          'total_harga': totalHarga,
          'status': status,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = json.decode(response.body);
        final int idTransaksi = responseData['data']['id_transaksi'];

        return idTransaksi;
      } else {
        print('Failed to store data: ${response.body}');
        return Future.error('Failed to store transaction: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
      return Future.error('Error while storing transaction: $e');
    }
  }
}
