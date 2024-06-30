import '../imports.dart';

class PostsModel {
  PostsModel({
    this.id,
    this.title,
    this.description,
    this.image,
    this.date,
    this.time,
    this.user,
    this.company,
  });

  String? id;
  String? title;
  String? description;
  String? image;
  String? date;
  String? time;
  String? company;
  UsersModel? user;
}
