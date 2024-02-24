import 'package:flutter/cupertino.dart';

import '../../models/category_model.dart';
import 'categorycard.dart';

class CategoriesListView extends StatelessWidget {
 const  CategoriesListView({super.key});
 final List<CategoryModel> categories =const[
   CategoryModel(categoryName: "business", imageLocal: "assets/business.avif"),
   CategoryModel(categoryName: "entertainment", imageLocal: "assets/entertaiment.avif"),
   CategoryModel(categoryName: "general", imageLocal: "assets/general.avif"),
   CategoryModel(categoryName: "health", imageLocal: "assets/health.avif"),
   CategoryModel(categoryName: "science", imageLocal: "assets/science.avif"),
   CategoryModel(categoryName: "sports", imageLocal: "assets/sports.avif"),
   CategoryModel(categoryName: "technology", imageLocal: "assets/technology.jpeg"),

 ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) =>  CategoryCard(
          cateModel:categories[index] ,
        ),
        itemCount:categories.length ,),
    );
  }
}
