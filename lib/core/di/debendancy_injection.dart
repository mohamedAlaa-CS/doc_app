import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/core/networking/dio_factory.dart';
import 'package:doc_app/featuers/login/data/repos/login_repo.dart';
import 'package:doc_app/featuers/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/featuers/sign_up/data/repos/signup_repo.dart';
import 'package:doc_app/featuers/sign_up/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// dio & api service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
