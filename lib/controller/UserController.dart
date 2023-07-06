import 'package:fineout_app/model/User.dart';

class UserController{
  Future<void> criarUsuario(String nome, String email, String senha) async {
    var nomeTratado = nome.toLowerCase();
    var emailTratado = email.toLowerCase();

    User().criarUsuario(nomeTratado, emailTratado, senha);
  }
}
