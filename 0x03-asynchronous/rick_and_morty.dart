import "package:http/http.dart" as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final res = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (res.statusCode != 200) {
      throw Exception("API error: ${res.statusCode}");
    }

    var jsonData = jsonDecode(res.body);

    for (var character in jsonData['results']) {
      print(character['name']);
    }
  } catch (err) {
    print('error caught: $err');
  }
}
