import '../http_helper.dart';
import '../link_api.dart';

class LoginData {

  Api api;
  LoginData(this.api);
  userLogin(
      {required String email, required String password,}) async {
    var response = await api.postData(
        url: ApiLink.login,
        body: {
          "email" : email ,
          "password" : password  ,

        }
    );
    // ignore: non_constant_identifier_names
    return response.fold((Left) => Left, (Right) => Right);
  }


}





