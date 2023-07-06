import "package:mysql1/mysql1.dart";

Future<MySqlConnection> createConnection() async {
  final configs = ConnectionSettings(
      host: "db4free.net",
      port: 3306,
      user: "fineoutapp",
      password: "fineoutapp",
      db: "fineoutapp");

  final connection = await MySqlConnection.connect(configs);
  return connection;
}
