import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      List<dynamic> characters = jsonData['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw Exception('Failed to load characters with status code: ${response.statusCode}');
    }
  } catch (err) {
    print('error caught: $err');
  }
}
