import 'package:flutter/material.dart';

import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //InkWell ---> Material styleのタッチ反応を子供Widgetに被せるWidget
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16), // タッチ効果を丸く
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ), // ボックスを丸く
          gradient: LinearGradient(
            colors: [
              category.color.withAlpha(20),
              category.color.withAlpha(150),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!
              .copyWith(
                color: Theme.of(
                  context,
                ).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
