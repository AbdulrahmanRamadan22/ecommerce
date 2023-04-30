import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';
import 'package:store_app_advanced/shared/middleware/my_middleware.dart';
import 'package:store_app_advanced/view/screen/auth/forgetpassword/forget_password_screen.dart';
import 'package:store_app_advanced/view/screen/auth/forgetpassword/reset_password_screen.dart';
import 'package:store_app_advanced/view/screen/auth/forgetpassword/verification_code_screen.dart';
import 'package:store_app_advanced/view/screen/auth/login.dart';
import 'package:store_app_advanced/view/screen/auth/register/register.dart';
import 'package:store_app_advanced/view/screen/auth/register/success_register.dart';
import 'package:store_app_advanced/view/screen/auth/register/verification_code_register_screen.dart';
import 'package:store_app_advanced/view/screen/on_boarding.dart';

import 'view/screen/auth/forgetpassword/success_reset_password.dart';



List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () =>  OnBoardingScreen() , middlewares: [
    MyMiddleWare()
  ]),

  GetPage(name: AppRoute.login, page: () =>  LoginScreen()),
  GetPage(name: AppRoute.register, page: () =>  RegisterScreen()),
  GetPage(name: AppRoute.forgerPassword, page: () => const ForgetPasswordScreen()),
  GetPage(name: AppRoute.verificationCode, page: () => const VerificationCodeScreen()),
  GetPage(name: AppRoute.resetPassword, page: () =>  ResetPasswordScreen()),
  GetPage(name: AppRoute.successResetPassword, page: () => const SuccessResetPasswordScreen()),
  GetPage(name: AppRoute.successRegister, page: () => const SuccessRegisterScreen()),
  GetPage(name: AppRoute.onBoarding, page: () =>  OnBoardingScreen()),
  GetPage(name: AppRoute.verificationCodeRegister, page: () => const VerificationCodeRegisterScreen()),

];
