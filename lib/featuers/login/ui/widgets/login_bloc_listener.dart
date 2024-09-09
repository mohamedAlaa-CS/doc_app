import 'package:doc_app/core/helper/extensions.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/featuers/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/featuers/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                      child: CircularProgressIndicator(
                    color: AppColors.mainBlue,
                  )));
        }, success: (loginResponse) {
          Navigator.pop(context);
          context.pushName(Routers.homeScreen);
        }, error: (error) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(error),
          ));
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
