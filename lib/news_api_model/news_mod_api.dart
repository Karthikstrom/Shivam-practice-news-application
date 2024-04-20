import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';
import 'package:shivam_newsapp_tutorial/news_api_model/news_mod.dart';

// class NewsApi {
//   static Future<List<NewModel>> fetchNews() async {
//     const url =
//         'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=522a282b37d34c1ea33e68a845393236';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final body = response.body;
//     final json = jsonDecode(body);
//     final results = json['results'] as List<dynamic>;

//     final news = results.map((e) {
//       return NewModel(
//         author: e['author'],
//         title: e['title'],
//         description: e['description'],
//         url: e['url'],
//         urlToImage: e['urlToImage'],
//         content: e['content'],
//       );
//     }).toList();
//     return news;
//   }
// }

class NewsApi {
  static Future<List<NewModel>> fetchNews() async {
    const url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=522a282b37d34c1ea33e68a845393236';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final body = response.body;
      final json = jsonDecode(body);

      if (json['articles'] != null) {
        print(json['totalResults']);
        // Check if 'articles' key exists and is not null
        final results = json['articles'] as List<dynamic>;
        //final results = json['articles'];
        final news = results
          .where((e) => e['urlToImage'] != null && e['description'] != null)
              .map((e) {
            return NewModel(
              author: e['author'],
              title: e['title'],
              description: e['description'],
              url: e['url'],
              urlToImage: e['urlToImage'],
              content: e['content'],
            );
          }).toList();
        return news;
      } else {
        throw Exception("No articles found in the response");
      }
    } else {
      throw Exception("Failed to load news");
    }
  }
}
