import 'package:flutter/material.dart';

class UserModel {
  String userName,
      userEmail,
      userGender,
      userPhoneNumber,
      userImage,
      userAddress;
  UserModel(
      {String this.userEmail,
        String this.userImage,
        String this.userAddress,
        String this.userGender,
        String this.userName,
        String this.userPhoneNumber});
}
