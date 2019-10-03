import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String cateforyTitle;

  CategoryMealsScreen(this.categoryId, this.cateforyTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateforyTitle),
      ),
      body: Center(
        child: Text(
          'The Recipes For the Category!',
        ),
      ),
    );
  }
}
