
import 'package:e_commerce2/modules/Authuntcation/data/Models/user_req.dart';

class UserRes{
  bool? status;
  String? message;
  UserReq? data;

  UserRes.fromJson(Map<String,dynamic> json){
    status = json["status"];
    message = json["message"];
    data = UserReq.formJson(json["data"]);
  }
}