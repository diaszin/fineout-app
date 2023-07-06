import 'package:fineout_app/db.dart';
import 'package:mysql1/mysql1.dart';

class User {
  Future<void> criarUsuario(String nome, String email, String senha) async {
    final connection = await createConnection();
    final values = [nome, email, senha];
    await connection.query(
        "INSERT INTO usuario(nome, email, senha) VALUES (?,?,?)", values);
    await connection.close();
    print("Cadastrou com sucesso");
  }

  Future<void> apagarConta(int id) async {
    final connection = await createConnection();
    final values = [id];
    await connection.query("DELETE FROM usuario WHERE id=?", values);
    await connection.close();
  }

  Future<void> alterarNome(int id, String nomeAtualizado) async {
    final connection = await createConnection();
    final values = [nomeAtualizado, id];
    await connection.query("UPDATE usuario SET nome=? WHERE id=?", values);
    await connection.close();
  }

  Future<void> alterarEmail(int id, String emailAtualizado) async {
    final connection = await createConnection();
    final values = [emailAtualizado, id];
    await connection.query("UPDATE usuario SET email=? WHERE id=?", values);
    await connection.close();
  }

  Future<void> doarParaUmaOrganizacao(
      int idUsuario, int idOrganizacao, double valorPagamento) async {
    final connection = await createConnection();
    final values = [idUsuario, idOrganizacao, valorPagamento];
    await connection.query(
        "INSERT INTO doacoes(id_usuario, id_organizacao, valor_pagamento) VALUES (?,?,?)",
        values);
    await connection.close();
  }

  Future<bool> autenticarUsuario(
      String emailInserido, String senhaInserida) async {
    final connection = await createConnection();
    final result = await connection.query("SELECT email, senha FROM usuario");
    for (var row in result) {
      String email = row[0]; // pegando o valor da lista
      String senha = row[1];

      if (emailInserido == email && senhaInserida == senha) {
        await connection.close(); // Fechando antes de retornar o valor
        return true;
      }
    }

    await connection.close();
    return false;
  }

  Future<void> favoritarOrganizacao(int id_organizacao, int id_usuario) async {
    final connection = await createConnection();
    final values = [id_organizacao, id_usuario];
    await connection.query(
        "INSERT INTO historicoDeFavoritos(id_organizacao, id_usuario) VALUES (?,?)",
        values);
    await connection.close();
  }

  Future<void> desfavoritarOrganizacao(
      int id_organizacao, int id_usuario) async {
    final connection = await createConnection();
    final values = [id_organizacao, id_usuario];
    await connection.query(
        "DELETE FROM historicoDeFavoritos WHERE id_organizacao=? AND id_usuario=?",
        values);
    await connection.close();
  }

  Future<Results> consultarFavoritos() async {
    final connection = await createConnection();
    final result = await connection.query(
        "SELECT org.nome, org.email FROM historicoDeFavoritos INNER JOIN usuario ON usuario.id = historicoDeFavoritos.id_usuario INNER JOIN organizacoes org ON org.id=historicoDeFavoritos.id_organizacao;");

    return result;
  }

  Future<Results> consultarOrganizacoes() async {
    final connection = await createConnection();
    final result = await connection.query("SELECT * FROM organizacoes");

    return result;
  }
}
