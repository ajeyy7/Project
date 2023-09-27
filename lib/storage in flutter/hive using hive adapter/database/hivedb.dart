import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../models/user_models.dart';

class HiveDb{
  HiveDb.internal();
  static HiveDb instance =HiveDb.internal();
  factory HiveDb(){//factory constructor for creating single ton class
    return instance;
  }
  Future<void> addUser(User user)async {
    final db=await Hive.openBox<User>('userData');
    db.put(user.id,user);
  }
  Future<List<User>> getUser()async{
    final db =await Hive.openBox<User>("userdata");
    return db.values.toList();
  }
}