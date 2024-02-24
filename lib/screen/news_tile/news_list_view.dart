import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';

import '../../models/article_model.dart';
import 'news_tile.dart';



class NewsListView extends StatelessWidget {


  final List<ArticleModel>articles;

  const NewsListView({super.key, required this.articles});





//why using create method
  // ban using init put async & await



  @override
  Widget build(BuildContext context)  {

//indicator
  //search indicator mid page
    return   SliverList(
      delegate:SliverChildBuilderDelegate(
          childCount: articles.length,
              (context, index) =>Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: NewsTile(articleModel:articles [index],),
              ) ),);
  }
}

