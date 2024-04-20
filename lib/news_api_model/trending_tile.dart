import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shivam_newsapp_tutorial/news_api_model/news_mod.dart';
import 'package:shivam_newsapp_tutorial/pages/article_view.dart';

class TrendingNewsSection extends StatelessWidget {
  const TrendingNewsSection({super.key, required this.articles});
  final List<NewModel> articles;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ArticleView(blogUrl: articles[index].url!)));
            },
            child: Card(
                color: Colors.white,
                shadowColor: Colors.blueGrey,
                elevation: 2,
                child: trendingTile(articles[index].urlToImage,
                    articles[index].title, articles[index].description)),
          );
        },
      ),
    );
  }

  Widget trendingTile(imageUrl, title, description) {
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
    Size size = view.physicalSize;
    double width = size.width;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Row(children: [
        Container(
          height: width * 0.1,
          width: width * 0.1,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.cover)),
        ),
        const SizedBox(width: 5),
        textblock(title, description)
      ]),
    );
  }

  Widget textblock(title, description) {
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
    Size size = view.physicalSize;
    double width = size.width;
    return Expanded(
      child: Container(
        height: width * 0.1,
        child: Column(children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 5,
          ),
          Text(description,
              overflow: TextOverflow.ellipsis,
              style:
                  const TextStyle(fontWeight: FontWeight.w200, fontSize: 10)),
        ]),
      ),
    );
  }
}
