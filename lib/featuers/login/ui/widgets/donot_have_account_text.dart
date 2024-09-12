import 'package:doc_app/core/helper/extensions.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DonotHaveAccountText extends StatelessWidget {
  const DonotHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkBlueWeight400,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueWeight600,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushName(Routers.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
