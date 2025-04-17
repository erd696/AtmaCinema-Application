import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:tubes/entity/Tiket.dart';

class TiketClient {
  // Update the base URL
  static const String _baseUrl = '10.0.2.2:8000';
  static const String _endpoint = '/api/tiket';

  /// Fetch tickets by user ID and include related film data
  static Future<List<Tiket>> fetchTicketsByUser(
      int userId, String token) async {
    try {
      final response = await http.get(
        Uri.http(_baseUrl, '$_endpoint/user/$userId'),
        headers: {'Authorization': 'Bearer $token'},
      );

      // Inspect the raw response from the API
      print("Raw API Response: ${response.body}");

      if (response.statusCode != 200) {
        throw Exception('Failed to fetch tickets: ${response.reasonPhrase}');
      }

      Iterable jsonList = json.decode(response.body)['data'];
      print("Parsed Tickets JSON List: $jsonList");

      List<Tiket> tickets = jsonList.map((data) {
        print("Mapping ticket data: $data");
        return Tiket.fromJson(data);
      }).toList();

      return tickets;
    } catch (e) {
      print('Error fetching tickets: $e');
      return Future.error('Error fetching tickets: $e');
    }
  }

  /// Fetch a ticket by ID with detailed film information
  static Future<Tiket> find(int id, String token) async {
    try {
      final response = await http.get(
        Uri.http(_baseUrl, '$_endpoint/$id'),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to fetch ticket: ${response.reasonPhrase}');
      }

      final jsonData = json.decode(response.body)['data'];
      Tiket tiket = Tiket.fromJson(jsonData);

      // Handle related JadwalTayang and Film data
      var jadwalTayangData = jsonData['jadwal_tayang'];
      if (jadwalTayangData != null) {
        tiket.jamTayang = jadwalTayangData['jam_tayang'];
        tiket.tanggal = jadwalTayangData['tanggal'];

        var filmData = jadwalTayangData['film'];
        if (filmData != null) {
          tiket.judulFilm = filmData['judul_film'];
          tiket.poster = filmData['poster'];
          tiket.format = filmData['dimensi'];
        }
      }

      // Calculate film end time and assign status
      int filmDuration = 120; // Default duration (120 minutes)
      DateTime jamTayang = DateTime.parse(tiket.jamTayang!);
      DateTime endTime = jamTayang.add(Duration(minutes: filmDuration));

      tiket.status =
          DateTime.now().isBefore(endTime) ? "on progress" : "history";

      return tiket;
    } catch (e) {
      print('Error fetching ticket: $e');
      return Future.error('Error fetching ticket: $e');
    }
  }

  /// Create a new ticket
  static Future<Tiket> create(
      Map<String, dynamic> tiketData, String? token) async {
    try {
      print("Sending POST request to: $_baseUrl$_endpoint");
      print(
          "Headers: {Content-Type: application/json, Authorization: Bearer $token}");
      print("Body: ${json.encode(tiketData)}");

      final response = await http.post(
        Uri.parse('$_baseUrl$_endpoint'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode(tiketData),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw Exception('Failed to create ticket: ${response.reasonPhrase}');
      }

      var responseBody = json.decode(response.body);

      if (responseBody.containsKey('data') && responseBody['data'] != null) {
        return Tiket.fromJson(responseBody['data']);
      } else {
        throw Exception('Missing data in response');
      }
    } catch (e) {
      print("Error creating ticket: $e");
      return Future.error('Error creating ticket: $e');
    }
  }

  /// Update an existing ticket by ID
  static Future<Tiket> update(
      int id, Map<String, dynamic> tiketData, String token) async {
    try {
      final response = await http.put(
        Uri.http(_baseUrl, '$_endpoint/$id'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode(tiketData),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to update ticket: ${response.reasonPhrase}');
      }

      final jsonData = json.decode(response.body)['data'];
      return Tiket.fromJson(jsonData);
    } catch (e) {
      print('Error updating ticket: $e');
      return Future.error('Error updating ticket: $e');
    }
  }

  /// Delete a ticket by ID
  static Future<void> delete(int id, String token) async {
    try {
      final response = await http.delete(
        Uri.http(_baseUrl, '$_endpoint/$id'),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to delete ticket: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error deleting ticket: $e');
      return Future.error('Error deleting ticket: $e');
    }
  }
}
