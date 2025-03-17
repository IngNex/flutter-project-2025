import 'package:flutter/material.dart';
import 'package:proyecto_ui/projects/onboarding/page/onboarding_page.dart';
import 'package:proyecto_ui/projects/projects_page.dart';
import 'package:proyecto_ui/projects/ui_login/pages/home_ui.dart';
import 'package:proyecto_ui/projects/ui_login/pages/sign_in_ui.dart';
import 'package:proyecto_ui/projects/ui_login/pages/sign_up_ui.dart';

class AppRoutes {
  static const String projects = '/';
  static const String onboarding = '/onboarding'; //HomeUi
  static const String loginUi = '/login_ui';
  static const String signin = '/signin';
  static const String signup = '/signup';

  static Map<String, WidgetBuilder> routes = {
    projects: (context) => ProjectsPage(),
    onboarding: (context) => OnboardingPage(),
    loginUi: (context) => HomeUi(),
    signin: (context) => SignInUI(),
    signup: (context) => SignUpUI(),
  };
}
