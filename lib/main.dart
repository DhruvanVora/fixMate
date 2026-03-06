import 'package:fixmate/di/injection.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const FixMate());
}

class FixMate extends StatelessWidget {
  const FixMate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Hello, world!'),
        ),
      ),
    );
  }
}
