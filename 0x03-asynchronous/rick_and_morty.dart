import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final List<dynamic> characters = jsonData['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('error caught: Failed to load characters with status code ${response.statusCode}');
    }
  } catch (err) {
    print('error caught: $err');
  }
}
