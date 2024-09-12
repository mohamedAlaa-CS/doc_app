import 'package:doc_app/core/di/debendancy_injection.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/featuers/home/ui/home_screen.dart';
import 'package:doc_app/featuers/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/featuers/login/ui/login_screen.dart';
import 'package:doc_app/featuers/onboarding/onboarding_screen.dart';
import 'package:doc_app/featuers/sign_up/logic/cubit/signup_cubit.dart';
import 'package:doc_app/featuers/sign_up/ui/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouters {
  static Route onGeneratorRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routers.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routers.signUpScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                ));
      case Routers.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          );
        });
    }
  }
}
