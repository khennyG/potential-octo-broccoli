class CategoryModel {
  final name, imageUrl;

  CategoryModel({this.name, this.imageUrl});
}

List<CategoryModel> categories = [
  CategoryModel(name: "Top videos", imageUrl: "assets/img/topnews.jpg"),
  CategoryModel(name: "Sponsored", imageUrl: "assets/img/india.jpg"),
];
