import 'package:comp/widgets/models.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDb {
  Database? database;
  getData() async{
    if (database == null) {
      database =await initialDb();
      return database;
    } else {
      return database;
    }
  }

  initialDb() async {
    String path = await getDatabasesPath();
    String dbpath = join(path, 'notes.db');
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        Batch batch = db.batch();
        batch.execute('''
CREATE TABLE notes(
id INTEGER PRIMARY KEY AUTOINCREMENT,
money TEXT,
date TEXT,
notes TEXT,
)
''');
        batch.commit();
      },
    );
    return database;
  }

  Future<void> insertData(Models note) async {
    Database db = await getData();
    Batch batch = db.batch();
    batch.insert('notes', note.tomap());
    batch.commit();
  }

  Future<List<Models>> getDb() async {
    Database db = await getData();
    List<Map> data = await db.query('notes');
    return List.generate(data.length, (i) {
      return Models(
        id: data[i]['id'],
        money: data[i]['money'],
        date: data[i]['date'],
        notes:data[i]['notes']
      );
    });
  }

  Future<void> update(Models note) async {
    Database db = await getData();
    Batch batch = db.batch();
    batch.update('notes', note.tomap(), where: 'id=?', whereArgs: [note.id]);
    batch.commit();
  }

  Future<int>delete(int id) async {
    Database db = await getData();
    return db.delete('notes',where: 'id=?',whereArgs: [id]);
  }
}
