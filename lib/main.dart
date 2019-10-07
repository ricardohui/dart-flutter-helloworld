import 'package:flutter/material.dart';
import './screens/tabs.screen.dart';

import './screens/category_meals_screen.dart';

import './screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: CategoriesScreen(),
      title: "DeliMeals",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))),
      routes: {
        '/': (ctx) => TabsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen()
      },
    );
  }
}
