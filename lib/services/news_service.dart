import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewService{
 final Dio dio =Dio();
 //method return News select type data
 //async take Future


 Future<List <ArticleModel>> getNews({required String category }) async{
   try {
     var response =await dio.get(
       "https://newsapi.org/v2/top-headlines?country=us&apiKey=8a8a9c66efcd492489cbe3d40ddba1c6&category=$category");
     Map<String,dynamic>jsonData=response.data;
     List<dynamic>articles =jsonData['articles'];
     //turn on  Map of List into  Map of object easy using
     List<ArticleModel>articleList=[];
     //loop ever item take of thing i need them
     for( var article in articles){
       ArticleModel articleModel =ArticleModel(
     
           image:article['urlToImage']  ,
           title: article["title"],
           subtitle: article["description"],
       );
     
       articleList.add(articleModel);
     }
       return articleList;
   }  catch (e) {
     //
     return [];
   }




 }


}

