//import 'dart:io';
//import 'package:sqflite/sqflite.dart';
//import 'package:path/path.dart';
//import 'package:path_provider/path_provider.dart';

class DatabaseSqlite {
  //Padrão Singleton(padrão de um unico objeto de uma unica classe)
  //impede que outras classes criem outros database
  DatabaseSqlite._internal();
  //Cria uma instância unica privada da classe pela propia classe
  static final DatabaseSqlite _instance = DatabaseSqlite._internal();
  // //Ao se criar uma nova instancia se ele refere ao mesmo já criado
  // factory Database() => _instance;

  //static Database? _database;

  // Future<Database> get_database() async {
  //   if (_database != null) {
  //     return _database!;
  //   } else {
  //     _database = await init_database();
  //   }
  // }

  // Future<Database> init_database() async {
  //   String databasePathOrigin = await getDatabasesPath();
  //   String databasePath = join(databasePathOrigin, "doce_conta.sqlite");

  //   var db = await openDatabase(databasePath,
  //       version: 1, onCreate: await createDatabase()
  //     );
  // }

  // Future<void> createDatabase(Database db) async {
  //   String sqlCreateDefaultTables = "Create table"+"";
  //   await db.execute(sqlCreateDefaultTables);
  // }
}

/*

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  // Copia o banco de dados de assets para o local correto no dispositivo
  Future<Database> _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'app_database.db');

    // Verifica se o banco de dados já foi copiado
    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data = await rootBundle.load('assets/db/pre_populated.db');
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Cria o arquivo e copia o banco de dados dos assets para o diretório local
      await File(path).writeAsBytes(bytes);
    }

    // Abre o banco de dados
    return await openDatabase(path);
  }

  Future<void> close() async {
    final db = await database;
    db.close();
  }
}
*/