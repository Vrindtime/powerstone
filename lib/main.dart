import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:powerstone/services/auth/auth_gate.dart';
import 'package:powerstone/services/theme.dart';
import 'services/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: apptheme,
      home: const AuthGate(),
    );
  }
}
