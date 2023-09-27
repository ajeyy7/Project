import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //data base creation
  static Future<sql.Database> createDB() async {
    return sql.openDatabase('loginpage.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute("""
    CREATE TABLE login(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    email TEXT,
    password TEXT,
    created AT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )""");
  }
}
