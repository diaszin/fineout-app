import "package:sqlite3/open.dart";
import "package:sqlite3/sqlite3.dart";


Database openDatabase() {
  const path = "./fineout.db";
  final db = sqlite3.open(path);
  db.execute('''
    CREATE TABLE IF NOT EXISTS usuarios(
      nome VARCHAR(100) NOT NULL, 
      email VARCHAR(100) UNIQUE NOT NULL, 
      senha STRING(8) NOT NULL
    )
  ''');
  db.execute('''
    CREATE TABLE IF NOT EXISTS organizacoes(
      nome VARCHAR(100) NOT NULL, 
      email VARCHAR(100) UNIQUE NOT NULL, 
      descricao TEXT NOT NULL
    )
  ''');
  db.execute('''
    CREATE TABLE IF NOT EXISTS doacoes(
      id_organizacao INT NOT NULL,
      id_usuario INT NOT NULL,
      valor_doacao DECIMAL(6,2) NOT NULL
    )
  ''');
  return db;
}