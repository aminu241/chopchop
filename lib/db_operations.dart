import 'package:chopchop/global.dart';
import 'package:chopchop/user.dart';
import 'package:sqflite/sqflite.dart';

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

 void lastUser() async {
    final List<Map<String, dynamic>> maps =
        await _database.query('users', limit: 1, orderBy: "id");

    List.generate(maps.length, (i) {
      print(maps[i]);
      loggedInUser = User(
          id: maps[i]["id"],
          first_name: maps[i]['first_name'],
          last_name: maps[i]['last_name'],
          email: maps[i]['email'],
          password: maps[i]['password']);
    });
    
  }

void lastUserByEmail(String email) async {
    final List<Map<String, dynamic>> user =
        await _database.query('users', limit: 1, orderBy: "id", where:  "email = $email");

    List.generate(user.length, (i) {
      print(user[i]);
      loggedInUser = User(
          id: user[i]["id"],
          first_name: user[i]['first_name'],
          last_name: user[i]['last_name'],
          email: user[i]['email'],
          password: user[i]['password']);
    });
  }

  Future<List<User>> users() async {
    final List<Map<String, dynamic>> maps = await _database.query(
      'users',
    );

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

  //   Future<List<String>> queryAllRows() async {
  //   Database db = await instance._initDatabase();
  //   db.query(table ,columns: [columnname]).then((data){
  //     List<Map<String,dynamic>> s = data;
  //     List<String> list = new List();
  //     for(var x in s){
  //       x.forEach((k,v)=>list.add(v));
  //     }
  //   });
  //   return list;
  // }

  //   Future<User> getLogin(String user, String password) async {

  //   var res = await _database.rawQuery("SELECT * FROM user WHERE username = '$user' and password = '$password'");

  //   if (res.length > 0) {
  //     return new User.fromMap(res.first);
  //   }
  //   return null;
  // }
}
