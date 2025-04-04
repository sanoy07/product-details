import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/pages/login_page.dart';
import 'package:template/providers/product_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
