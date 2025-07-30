import 'package:flutter/material.dart';

import 'package:meals/data/dummy_data.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick your category')),
      body: GridView(
        // padding: EdgeInsets.all(24),

        // GridView --> Layoutの全体コンテナ
        //  GridView ---> 基本的に　Vertical Scroll Layout
        //　内部は　左　＞　右の順で配置され、次の列に改行。
        gridDelegate: //  Grid
        SliverGridDelegateWithFixedCrossAxisCount(
          // 固定のColumn数で配置。
          crossAxisCount: 2, // 1行ごとにおく数
          childAspectRatio: 3 / 2, // 各itemの　横・縦のレート
          crossAxisSpacing: 20, //　左右間隔
          mainAxisSpacing: 20, // 上下間隔
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(category: category),
        ],
      ),
    );
  }
}
