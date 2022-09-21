import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(
      const RecipeApp(),
    );

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      title: 'Recipe App',
      home: const HomePage(),
    );
  }
}
