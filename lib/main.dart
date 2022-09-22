import 'package:flutter/material.dart';
import 'package:recipe_ui/pages/recipe_page.dart';
import 'package:recipe_ui/theme/theme.dart';

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
      theme: ProductTheme.lightTheme,
      title: 'Recipe App',
      home: const HomePage(),
    );
  }
}
