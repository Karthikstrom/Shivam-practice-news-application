import 'package:flutter/material.dart';

//Models
import 'package:shivam_newsapp_tutorial/models/category_model.dart';
import 'package:shivam_newsapp_tutorial/models/slider_model.dart';
//import 'package:shivam_newsapp_tutorial/models/article_model.dart';
import 'package:shivam_newsapp_tutorial/news_api_model/news_mod.dart';
import 'package:shivam_newsapp_tutorial/news_api_model/news_mod_api.dart';

//Services
import 'package:shivam_newsapp_tutorial/services/data.dart';
//import 'package:shivam_newsapp_tutorial/services/news.dart';
import 'package:shivam_newsapp_tutorial/services/slider_data.dart';

//Home Page
import 'package:shivam_newsapp_tutorial/pages/home_appbar.dart';
import 'package:shivam_newsapp_tutorial/pages/home_divider.dart';

//import 'package:shivam_newsapp_tutorial/pages/home_trending_news.dart';
//import 'package:shivam_newsapp_tutorial/pages/home_trending_api_news.dart';
import 'package:shivam_newsapp_tutorial/news_api_model/trending_tile.dart';

import 'package:shivam_newsapp_tutorial/pages/home_categories_top.dart';
import 'package:shivam_newsapp_tutorial/pages/home_breaking_news.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<SliderModel> sliders = [];
  List<NewModel> articles = [];
  //bool _loading = true;

  @override
  void initState() {
    categories = getCategories();
    sliders = getSlider();
    fetchNews();
    super.initState();
  }

  Future<void> fetchNews() async {
    final response = await NewsApi.fetchNews();
    setState(() {
      articles = response;
      // _loading = false;
    });
  }

  // Shivam's version
  // getNews() async {
  //   News newsclass = News();
  //   await newsclass.getNews();
  //   articles = newsclass.news;
  //   setState(() {
  //     _loading = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const MyAppBar()),
      floatingActionButton: FloatingActionButton(onPressed: fetchNews),
      body:
          //_loading
          //? const Center(child: CircularProgressIndicator())
          CustomScrollView(slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              // CategoriesHeader(categories: categories),
              // const HomePageDivider(header: 'BREAKING NEWS'),
              // BreakingNewsCarousal(sliders: sliders),
              // const HomePageDivider(header: 'TRENDING NEWS'),
              TrendingNewsSection(articles: articles),
            ],
          ),
        ),
      ]),
    );
  }
}
