import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:taja_news/models/article_model.dart';
import 'package:taja_news/views/article_view.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        ('http://newsapi.org/v2/top-headlines?country=in&apiKey=6a205d60c11249a4b262839dcd3bf98c');
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['description'] != null && element['urlToImage'] != null) {
          ArticleModel articleModel = new ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content']);

          news.add(articleModel);
        }
      });
    }
  }
}

class CatNews {
  List<ArticleModel> catnews = [];

  Future<void> getCatNews(String category) async {
    String url =
        ('http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=6a205d60c11249a4b262839dcd3bf98c');
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['description'] != null && element['urlToImage'] != null) {
          ArticleModel articleModel = new ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content']);

          catnews.add(articleModel);
        }
      });
    }
  }
}
