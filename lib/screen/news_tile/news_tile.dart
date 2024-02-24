
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
//Package
//cached network image using image on internet (Task & search )

class NewsTile extends StatelessWidget {
  const  NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [


        // articleModel.image == null  ?const Text("no Found"):CachedNetworkImage (
        //
        //   imageUrl:articleModel.image!,
        //
        //     height:200 ,
        //     width: double.infinity,
        //     imageBuilder: (context, imageProvider) => Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(6),
        //       image: DecorationImage(
        //
        //           image: imageProvider,
        //           fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),
        //   placeholder: (context, url) => const CircularProgressIndicator(),
        //   errorWidget: (context, url, error) => const Icon(Icons.error),
        // ),
        ////////////////////////////////////////////////////////////////////////
      //
        articleModel.image == null  ?const Text("no Found"):ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child:Image.network(
         articleModel.image??"no Found ",
          height:200 ,
          width: double.infinity,
          fit: BoxFit.cover,
        ) ,),

        const SizedBox(
          height: 12,
        ),
         Text(
        articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
           color: Colors.black87,
           fontWeight: FontWeight.w500,
           fontSize: 20
          ),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
          articleModel.subtitle??"",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 14
          ),
        ),
    const SizedBox(
    height: 4,),
      ],
    );
  }
}
