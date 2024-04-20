import 'package:shivam_newsapp_tutorial/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class News {
  static Future<List<ArticleModel>> getNews() async {
    List<ArticleModel> news = [];
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=522a282b37d34c1ea33e68a845393236";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element['author'],
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
          );
          news.add(articleModel);
        }
      });
    }
    return news;
  }
}



// class News {
//   List<ArticleModel> news = [];

//   Future<void> getNews() async {
//     String url =
//         "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=522a282b37d34c1ea33e68a845393236";
//     var response = await http.get(Uri.parse(url));

//     var jsonData = jsonDecode(response.body);

//     if (jsonData['status'] == 'ok') {
//       jsonData['articles'].forEach((element) {
//         if (element['urlToImage'] != null && element['description'] != null) {
//           ArticleModel articleModel = ArticleModel(
//             author: element['author'],
//             title: element['title'],
//             description: element['description'],
//             url: element['url'],
//             urlToImage: element['urlToImage'],
//             content: element['content'],
//           );
//           news.add(articleModel);
//           print(news);
//         }
//       });
//     }
//   }
// }

