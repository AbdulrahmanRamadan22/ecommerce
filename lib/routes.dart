import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:store_app_advanced/shared/constants/routes.dart';
import 'package:store_app_advanced/shared/middleware/my_middleware.dart';
import 'package:store_app_advanced/view/screen/auth/cart.dart';
import 'package:store_app_advanced/view/screen/auth/forgetpassword/forget_password_screen.dart';
import 'package:store_app_advanced/view/screen/auth/forgetpassword/reset_password_screen.dart';
import 'package:store_app_advanced/view/screen/auth/forgetpassword/verification_code_screen.dart';
import 'package:store_app_advanced/view/screen/auth/login.dart';
import 'package:store_app_advanced/view/screen/auth/register/register.dart';
import 'package:store_app_advanced/view/screen/auth/register/success_register.dart';
import 'package:store_app_advanced/view/screen/auth/register/verification_code_register_screen.dart';
import 'package:store_app_advanced/view/screen/category.dart';
import 'package:store_app_advanced/view/screen/favorite.dart';
import 'package:store_app_advanced/view/screen/home.dart';
import 'package:store_app_advanced/view/screen/on_boarding.dart';
import 'package:store_app_advanced/view/screen/product.dart';
import 'package:store_app_advanced/view/screen/profile.dart';

import 'layout/layout.dart';
import 'view/screen/auth/forgetpassword/success_reset_password.dart';



List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () =>  const OnBoardingScreen() , middlewares: [
    MyMiddleWare()
  ]),

  GetPage(name: AppRoute.login, page: () =>  const LoginScreen()),
  GetPage(name: AppRoute.register, page: () =>  const RegisterScreen()),
  GetPage(name: AppRoute.forgerPassword, page: () => const ForgetPasswordScreen()),
  GetPage(name: AppRoute.verificationCode, page: () => const VerificationCodeScreen()),
  GetPage(name: AppRoute.resetPassword, page: () =>  const ResetPasswordScreen()),
  GetPage(name: AppRoute.successResetPassword, page: () => const SuccessResetPasswordScreen()),
  GetPage(name: AppRoute.successRegister, page: () => const SuccessRegisterScreen()),
  GetPage(name: AppRoute.onBoarding, page: () =>  const OnBoardingScreen()),
  GetPage(name: AppRoute.verificationCodeRegister, page: () => const VerificationCodeRegisterScreen()),
  GetPage(name: AppRoute.layout, page: () =>  const LayoutScreen()),
  GetPage(name: AppRoute.home, page: () =>  const HomeScreen()),
  GetPage(name: AppRoute.favorite, page: () =>  const FavoriteScreen()),
  GetPage(name: AppRoute.cart, page: () =>  const CartScreen()),
  GetPage(name: AppRoute.category, page: () =>  const CategoryScreen()),

  GetPage(name: AppRoute.profile, page: () =>  const ProfileScreen()),

  GetPage(name: AppRoute.product, page: () =>  const ProductScreen()),


];
