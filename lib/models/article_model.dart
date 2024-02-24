class ArticleModel{
  final String? image;
  final String title;
  final String? subtitle;
  final SourceModel ?sourceModel;
  const  ArticleModel(  {this.sourceModel,required this.image,required this.title,required this.subtitle,});


}

class SourceModel{
  final String? id;
  final String? name;

  SourceModel({required this.id, required this.name});

}
