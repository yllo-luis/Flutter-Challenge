class TextValidator {
  String emailValidator(String email) {
    if (email.contains("@")) {
      return "";
    }

    return "Email invalido";
  }

  String passwordValidator(String password) {
    if (password.length >= 8) {
      return "";
    }

    return "Senha invalida";
  }
}
