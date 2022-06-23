import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesPage extends StatelessWidget {
  final String title = 'Healthy Meals';

  // CategoriesPage({
  //   this.title,
  // });

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              id: catData.id,
              title: catData.title,
              imaging: catData.imaging,
              color: catData.color,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        childAspectRatio: 1.6,
        crossAxisSpacing: 1000,
        mainAxisSpacing: 40,
      ),
      padding: const EdgeInsets.all(15),
    );
  }
}
