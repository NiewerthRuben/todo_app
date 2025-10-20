import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/widgets/repository_container.dart';

import 'application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = SharedPreferencesAsync();
  runApp(RepositoryContainer(preferences: preferences, child: Application()));
}