class UsersModel {
  UsersModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.bio,
    this.occupation,
    this.token,
    this.createdAt,
    this.updatedAt,
    this.rating,
    this.experience,
  });

  int? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  String? bio;
  String? occupation;
  String? token;
  String? createdAt;
  String? updatedAt;
  String? rating;
  String? experience;
}
