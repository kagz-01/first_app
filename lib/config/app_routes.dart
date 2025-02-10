import 'package:first_app/Pages/edit_profile_page.dart';

import '../Pages/home_page.dart';
import '../Pages/login_page.dart';
import '../Pages/main_page.dart';
import '../Pages/profile_page.dart';

class AppRoutes {

  static final pages = {
    '/': (context) => const LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => const MainPage(),
    '/profile' : (context) => const ProfilePage(),
    '/edit_profile' : (context) =>const EditProfilePage()
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const profile = '/profile';
  static const editProfile = '/edit_profile';

}