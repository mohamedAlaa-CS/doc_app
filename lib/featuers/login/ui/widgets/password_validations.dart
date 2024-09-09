import 'package:doc_app/core/helper/spacing.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations(
      {super.key,
      required this.hasLowercase,
      required this.hasUppercase,
      required this.hasNumber,
      required this.hasSpecialChar,
      required this.hasMinLength});
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildValidationRow('At lest 1 lowercase letter', hasLowercase),
      verticalSpace(2),
      buildValidationRow('At lest 1 uppercase letter', hasUppercase),
      verticalSpace(2),
      buildValidationRow('At lest 1 number', hasNumber),
      verticalSpace(2),
      buildValidationRow('At lest 1 special character', hasSpecialChar),
      verticalSpace(2),
      buildValidationRow('At lest 8 characters', hasMinLength),
    ]);
  }

  Widget buildValidationRow(String text, bool isValid) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueWeight400.copyWith(
            decoration: isValid ? TextDecoration.lineThrough : null,
            decorationThickness: 2,
            decorationColor: Colors.green,
            color: isValid ? AppColors.gray : AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}
