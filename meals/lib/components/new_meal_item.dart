import 'package:flutter/material.dart';
import '../models/meal.dart';

//Representando o Item de uma refeição
class MealItem extends StatelessWidget {
  final Meal meal;
  // ignore: use_key_in_widget_constructors
  const MealItem(this.meal);

  void _selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMeal,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(meal.title),
      ),
    );
  }
}
