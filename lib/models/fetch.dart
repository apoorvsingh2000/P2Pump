import 'package:http/http.dart' as http;

Future<List<String>> fetchData(var apiAddr) async {
  final url = Uri.parse('http://3.92.27.19/front');
  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Splitting the body on the literal string "\n" instead of newline characters
      String body = response.body.trim();
      if (body.startsWith('"') && body.endsWith('"')) {
        body = body.substring(1, body.length - 1);
      }
      List<String> lines =
          body.split(r'\n').where((line) => line.isNotEmpty).toList();

      if (lines.length != 7) {
        throw Exception(
            "Data format error: Expected 7 data points, got ${lines.length}");
      }
      return lines;
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    throw Exception('Failed to load data: $e');
  }
}
