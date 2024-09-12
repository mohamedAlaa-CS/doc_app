import 'package:doc_app/core/networking/api_errpr_handler.dart';
import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/featuers/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_app/featuers/sign_up/data/models/sign_up_response.dart';

 class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpRespose>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      var response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
