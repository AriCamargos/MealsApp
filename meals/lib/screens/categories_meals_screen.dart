// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../models/category.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;

  const CategoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    //Fiz um filtro para pegar apenas o ID da categoria MEAL.
    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: categoryMeals.length, //Percorre o tamanho da lista.
            itemBuilder: (context, index) {
              return MealItem(categoryMeals[index]);
            }),
      ),
    );
  }
}
