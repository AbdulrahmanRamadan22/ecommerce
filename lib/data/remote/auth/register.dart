


import '../http_helper.dart';
import '../link_api.dart';

class RegisterData {

  Api api;
  RegisterData(this.api);
  userRegister(
      {required String name, required String phone,required String email,required String password,  }) async {
    var response = await api.postData(
        url: ApiLink.register,
       body:{
        "name" : name,
         "phone" : phone,
         "email" : email,
        "password" : password,

        }
        );
    return response.fold((l) => l, (r) => r);
  }


}
