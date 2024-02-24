import 'package:flutter/material.dart';
import 'package:news_app/screen/categories/categorycard.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import '../screen/categories/categories_list_view.dart';
import '../screen/news_tile/new_list_builder_view.dart';
import '../screen/news_tile/news_list_view.dart';
import '../screen/news_tile/news_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(

          mainAxisSize: MainAxisSize.min,
          children: [

            Text("News",style: TextStyle(color: Colors.black)),

            Text("Cloud",style: TextStyle(color: Colors.orange),),
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 32,)),
                  NewListViewBuilder(category: "general"),

          ],
        )
      ),


    );
  }
}


List <String> name=["Ahmed","Ali","mohamed","amr"];
