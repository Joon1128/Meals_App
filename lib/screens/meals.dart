import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Noting here!',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface, //onBackground?
                ),
          ),
          SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!
                .copyWith(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface, //onBackground?
                ),
          ),
        ],
      ),
    );
    if (meals.isEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) =>
            Text(meals[index].title), // indexに該当するitemを返却
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
