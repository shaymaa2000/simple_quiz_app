import 'dart:convert'as convert ;
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://localhost/flutter_api";


  Future<List<dynamic>> fetchQuestions() async {
    final response = await http.get(Uri.parse("http://10.0.2.2/projectmop/api.php"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['success']) {
        return data['questions'];
      } else {
        throw Exception("Failed to load questions");
      }
    } else {
      throw Exception("Failed to connect to server");
    }
  }


  Future<void> submitScore(String name, int score) async {
    final response = await http.post(
      Uri.parse("http://10.0.2.2/projectmop/api.php"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"name": name, "score": score}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (!data['success']) {
        throw Exception("Failed to save score: ${data['message']}");
      }
    } else {
      throw Exception("Failed to connect to server");
    }
  }
}
