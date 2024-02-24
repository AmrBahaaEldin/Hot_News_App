
import 'package:flutter/material.dart';

import '../../models/article_model.dart';
import '../../services/news_service.dart';
import 'news_list_view.dart';


//widget
class NewListViewBuilder extends StatefulWidget {

   NewListViewBuilder({super.key, required this.category});
final String category;
  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}
//state
class _NewListViewBuilderState extends State<NewListViewBuilder> {
  bool isLoading=true;
  var future;
  List<ArticleModel>articles=[];

//why using create method
  Future<void> getGeneralNews()async{
    articles=await NewService().getNews(category: 'general');
    //make rebuild after value change
    isLoading=false;

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //need access
    future=NewService().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      //future builder can rebuild itself by using future request
      future: future,
        builder:(context, snapshot) {
        if(snapshot.hasData){
          return  NewsListView(
            articles:   snapshot.data ??[],
          );
        }
        else if(snapshot.hasError){
         return const SliverToBoxAdapter(
           child: Text("oops there was an error , try later"),
         );
        } else{
          return const SliverToBoxAdapter(
                  child: Center
                    (child: CircularProgressIndicator()),);
        }

        //snapshot store Data wait come


        }, );

  }
}