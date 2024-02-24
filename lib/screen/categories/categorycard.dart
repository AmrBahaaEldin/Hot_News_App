
import 'package:flutter/material.dart';

import '../../models/category_model.dart';
import '../../view/categories_view.dart';



class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.cateModel});
final CategoryModel cateModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){ Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => CategoryView(
              category: cateModel.categoryName,)
        ),

    );
  },
      child: Padding(
        padding:  const EdgeInsets.only(right: 10,left: 10),
        child: Container(
          height:85,
          width: 160,
          decoration: BoxDecoration(
            image:   DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(cateModel.imageLocal)),

            borderRadius: BorderRadius.circular(10),

          ),
          child:   Center(
              child: Text(cateModel.categoryName,style: const TextStyle(color: Colors.white),)),

        ),
      ),
    );
  }
}
