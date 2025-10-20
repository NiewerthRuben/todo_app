import 'package:shared_preferences/shared_preferences.dart';

class PreferencesRepository{
  final SharedPreferencesAsync preferences;

  static const String todoKey = "todoKey";

  PreferencesRepository({required this.preferences});

  Future<void> saveTodoList(String todoList) async {
    await preferences.setString(todoKey, todoList);
  }

  Future<String?> loadTodoList() async {
    return await preferences.getString(todoKey);
  }
}