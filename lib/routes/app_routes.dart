import 'package:flutter/material.dart';
import 'package:proyecto_ui/projects/onboarding/page/onboarding_page.dart';
import 'package:proyecto_ui/projects/projects_page.dart';

class AppRoutes {
  static const String projects = '/';
  static const String onboarding = '/onboarding';

  static Map<String, WidgetBuilder> routes = {
    projects: (context) => ProjectsPage(),
    onboarding: (context) => OnboardingPage(),
  };
}