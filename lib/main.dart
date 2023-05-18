import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabuleiro/provider/auth_provider.dart';
import 'package:tabuleiro/service/check_is_login.dart';
import 'package:tabuleiro/theme/my_theme.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabulero',
      theme: myTheme,
      home: const CheckIsLogin(),
    );
  }
}
