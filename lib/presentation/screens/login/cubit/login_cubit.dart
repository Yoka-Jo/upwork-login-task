import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../app/functions.dart';
import '../../../common/freezed/freezed_data_classes.dart';
import '../../../resources/strings_manager.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(BuildContext context) => BlocProvider.of(context);
  LoginObject loginObject = LoginObject(email: "", password: "");
  bool areInputsValid = false;
  String? errorEmail;
  String? errorPassword;

  void setEmail(String email) {
    if (isEmailValid(email)) {
      loginObject = loginObject.copyWith(email: email);
      errorEmail = null;
    } else {
      loginObject = loginObject.copyWith(email: "");
      errorEmail = AppStrings.emailInvalid;
    }
    validate();
  }

  void setPassword(String password) {
    if (isPasswordValid(password)) {
      loginObject = loginObject.copyWith(password: password);
      errorPassword = null;
    } else {
      loginObject = loginObject.copyWith(password: "");
      errorPassword = AppStrings.passwordInvalid;
    }
    validate();
  }

  void validate() {
    areInputsValid =
        loginObject.email.isNotEmpty && loginObject.password.isNotEmpty;
    emit(LoginValidateInputsState());
  }
}
