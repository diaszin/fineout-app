import 'package:fineout_app/model/User.dart';

class UserController {
  Future<void> criarUsuario(String nome, String email, String senha) async {
    var nomeTratado = nome.toLowerCase();
    var emailTratado = email.toLowerCase();

    User().criarUsuario(nomeTratado, emailTratado, senha);
  }

  Future<List> consultarOrganizacoes() async {
    final List listaOrganizacoes = [];
    final resultadoBanco = await User().consultarOrganizacoes();
    for (var row in resultadoBanco) {
      listaOrganizacoes.add({"id": row[0], "nome": row[1], "email": row[2]});
    }
    return listaOrganizacoes;
  }
}

void main(List<String> args) async {
  final resultado = await UserController().consultarOrganizacoes();
  print(resultado);
}
