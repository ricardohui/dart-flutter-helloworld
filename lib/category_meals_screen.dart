import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String cateforyTitle;

  // CategoryMealsScreen(this.categoryId, this.cateforyTitle);
  @override
  Widget build(BuildContext context) {
    final routeArges =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArges['title'];
    final categoryId = routeArges['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          'The Recipes For the Category!',
        ),
      ),
    );
  }
}
