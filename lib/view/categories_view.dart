import 'package:flutter/material.dart';
import 'package:news_app/screen/news_tile/new_list_builder_view.dart';
import 'package:news_app/screen/news_tile/news_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          NewListViewBuilder(
            category: category,
          )
        ],
      )
    );
  }
}
