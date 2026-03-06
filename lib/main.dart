import 'package:firebase_core/firebase_core.dart';
import 'package:fixmate/core/di/injection.dart';
import 'package:fixmate/core/router/app_router.dart';
import 'package:fixmate/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  runApp(const FixMate());
}

class FixMate extends StatelessWidget {
  const FixMate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FixMate',
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
