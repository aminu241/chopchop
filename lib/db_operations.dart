import 'package:chopchop/app_database.dart';
import 'package:chopchop/global.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:chopchop/user.dart';

class DBOperations {
  final Database _database;

  DBOperations(this._database);

  Future<void> insertRecord(
      String firstName, String lastName, String email, String password) async {
    Map<String, Object> userMap = {
      "id": DateTime.now().millisecond,
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "password": password
    };

    await _database.insert('users', userMap,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> deleteRecord(String firstName, String lastName) async {
    // Map<String, Object> userMap = {
    //   "id": DateTime.now().millisecond,
    //   "first_name": firstName,
    //   "last_name": lastName,
    // };

    // await _database.insert('users', userMap,
    //     conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<User>> users() async {
    final List<Map<String, dynamic>> maps = await _database.query('users');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      print(maps[i]);
      return User(
        id: maps[i]['id'],
        first_name: maps[i]['first_name'],
        last_name: maps[i]['last_name'],
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }

 Future<List<Map<String, Object?>>> getLastUser() {
    var lastUser =
        _database.rawQuery("SELECT * FROM table ORDER BY column DESC LIMIT 1");
    print(lastUser);
    return lastUser;
  }

  //   Future<User> getLogin(String user, String password) async {

  //   var res = await _database.rawQuery("SELECT * FROM user WHERE username = '$user' and password = '$password'");

  //   if (res.length > 0) {
  //     return new User.fromMap(res.first);
  //   }
  //   return null;
  // }

}
