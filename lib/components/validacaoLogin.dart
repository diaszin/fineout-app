abstract class Validator {
  static String? validateEmail(String? email) {
    RegExp regExp = RegExp(r"\w+@\w+\.\w+");
    if (email == null || email.isEmpty) {
      return "Este campo é obrigatório";
    } else if (!regExp.hasMatch(email)) {
      return "Email inválido";
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "Este campo é obrigatório";
    } else if (password.length < 8) {
      return "Este campo deve conter pelo menos 8 caracteres";
    }
    return null;
  }
}
