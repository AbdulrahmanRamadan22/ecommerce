


import '../http_helper.dart';

class RegisterData {

  Api api;
  RegisterData(this.api);
  userRegister(
      {required String username, required String password, required String email, required String phone}) async {
    var response = await api.postData(
        url: "dvdd",
        body: {
        "username" : username ,
        "password" : password  ,
        "email" : email ,
        "phone" : phone  ,
        }
        );
    return response.fold((l) => l, (r) => r);
  }


}
