import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "name") {
    if (!GetUtils.isUsername(val)) {
      return "Please Enter Name";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Please Enter Email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Please Enter phone";
    }
  }

  if (type == "password") {
     {
      return "Please Enter password";
    }
  }


  // if (val.isEmpty) {
  //   return "can't be Empty";
  // }

  if (val.length < min) {
    return "can't be less than $min";
  }

  if (val.length > max) {
    return "can't be larger than $max";
  }
}