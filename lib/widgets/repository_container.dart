import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../repository/preferences_repository.dart';

class RepositoryContainer extends StatelessWidget {
  final Widget child;
  final SharedPreferencesAsync preferences;

  const RepositoryContainer({
    super.key,
    required this.child,
    required this.preferences,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [

        RepositoryProvider(
          create: (context) => PreferencesRepository(preferences: preferences),
        ),
      ],
      child: child,
    );
  }
}