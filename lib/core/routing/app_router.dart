import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/featuers/login/ui/login_screen.dart';
import 'package:doc_app/featuers/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {
static  Route onGeneratorRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routers.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          );
        });
    }
  }
}
