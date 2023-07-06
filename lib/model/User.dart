import 'package:fineout_app/db.dart';
import "package:sqlite3/sqlite3.dart";

class User {
  bool createUser(String nome, String email, String senha) {
    final Database banco = openDatabase();

    String sql = "INSERT INTO usuarios VALUES (? ,?, ?)";
    List values = [nome, email, senha];
    try {
      banco.execute(sql, values);
    } catch (e) {
      return false;
    }

    return true;
  }

  bool updateUserName(int id, String nomeAtualizado) {
    final Database banco = openDatabase();

    String sql = "UPDATE usuarios SET name = ? WHERE rowid = ?";
    List values = [nomeAtualizado, id];
    try {
      banco.execute(sql, values);
    } catch (e) {
      return false;
    }

    return true;
  }

  bool apagarUser(int id) {
    final Database banco = openDatabase();

    String sql = "DELETE FROM usuarios WHERE rowid = ?";
    List values = [id];
    try {
      banco.execute(sql, values);
    } catch (e) {
      return false;
    }

    return true;
  }

  bool autenticarUser(int id, String nomeInserido, String senhaInserida) {
    final Database banco = openDatabase();

    final List<Map<String, dynamic>> result =
        banco.select('SELECT email, senha FROM usuarios');
    List contas = result.toList();
    print(contas);

    banco.dispose();
    return false;
  }
}

void main(List<String> args) {
  final Database banco = openDatabase();

    final List<Map<String, dynamic>> result = banco.select('SELECT email, senha FROM usuarios');
    List contas = result.toList();
    print(contas);

    banco.dispose();
}
