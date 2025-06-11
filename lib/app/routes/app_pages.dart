import 'package:get/get.dart';
import 'package:koma/app/modules/home/bindings/login_binding.dart';
import 'package:koma/app/modules/home/views/auth/forgot_password_screen.dart';
import 'package:koma/app/modules/home/views/auth/login_screen.dart';
import 'package:koma/app/modules/home/views/auth/new_password.dart';
import 'package:koma/app/modules/home/views/auth/otp_screen.dart';
import 'package:koma/app/modules/home/views/choose_country.dart';
import 'package:koma/app/modules/home/views/date_screen.dart';
import 'package:koma/app/modules/home/views/email_view.dart';
import 'package:koma/app/modules/home/views/gender_selection.dart';
import 'package:koma/app/modules/home/views/home_screen.dart';
import 'package:koma/app/modules/home/views/login_view.dart';
import 'package:koma/app/modules/home/views/password_view.dart';
import 'package:koma/app/modules/home/views/room_screen_list.dart';
import 'package:koma/app/modules/home/views/sucess_screen.dart';
import 'package:koma/app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.login,
        page: () => LoginView(),
        binding: LoginBinding()),
    GetPage(name: AppRoutes.email, page: () => EmailView()),
    GetPage(name: AppRoutes.password, page: () => PasswordView()),
    GetPage(name: AppRoutes.sucess, page: () => SucessScreen()),
    GetPage(name: AppRoutes.loginpage, page: () => LoginScreen()),
    GetPage(name: AppRoutes.forgotpassword, page: () => ForgotPasswordScreen()),
    GetPage(name: AppRoutes.OtpScreen, page: () => OtpScreen()),
    GetPage(name: AppRoutes.NewPassword, page: () => NewPassword()),
    GetPage(name: AppRoutes.datescreen, page: () => DateScreen()),
    GetPage(name: AppRoutes.gender, page: () => GenderSelection()),
    GetPage(name: AppRoutes.ChooseCountry, page: () => ChooseCountry()),
    GetPage(name: AppRoutes.Homescreen, page: () => HomeScreen()),
     GetPage(name: AppRoutes.roomlist, page: () => RoomScreenList()),
  ];
}
