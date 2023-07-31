import 'package:form_validation/extension/string_ext.dart';
import 'package:form_validation/model/validation_model.dart';

class HomeViewmodel {
  ValidationModel email = ValidationModel(null, null);
  ValidationModel password = ValidationModel(null, null);

  bool get isValid => email.value != null && password.value != null;

  validateEmail(String value) {
    if (value.isValidEmail) {
      email = ValidationModel(value, null);
    } else {
      email = ValidationModel(null, "Please Enter a valid email");
    }
  }

  validatePassword(String value) {
    if (value.isValidPassword) {
      password = ValidationModel(value, null);
    } else {
      password =
          ValidationModel(null, "Password must be at least 8 characters");
    }
  }

  login() {
    // TODO: Login
  }
}
