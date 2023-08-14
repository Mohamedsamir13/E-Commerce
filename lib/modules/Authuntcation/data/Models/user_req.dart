class UserReq {
  String? name;
  String? phone;
  String? email;
  String? password;
  String? image;
  String? token;

  UserReq({
    required this.name,
    required this.email,
    required this.password,
    this.image,
  });

  UserReq.formJson(Map<String, dynamic>? json) {
    name = json?["name"];

    password = json?["password"];
    image = json?["image"];
    email = json?["email"];
    token = json?["token"];
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'phone': phone,
    'password': password,
    'image': image,
  };
}
