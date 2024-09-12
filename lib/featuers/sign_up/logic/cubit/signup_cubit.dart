import 'package:doc_app/featuers/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_app/featuers/sign_up/data/repos/signup_repo.dart';
import 'package:doc_app/featuers/sign_up/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signUpRepo) : super(const SignupState.initial());

  final SignUpRepo _signUpRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  var signupFormKey = GlobalKey<FormState>();

  void signup() async {
    emit(const SignupState.signupLoading());
    final response = await _signUpRepo.signUp(SignUpRequestBody(
      email: emailController.text,
      name: nameController.text,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
      phone: phoneController.text,
      gender: 0,
    ));
    response.when(
      success: (signUpRespose) {
        emit(SignupState.signupSuccess(signUpRespose));
      },
      failure: (error) {
        emit(SignupState.signupError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
