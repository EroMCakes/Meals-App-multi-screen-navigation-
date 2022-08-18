import 'package:flutter/material.dart';

import '../../Utils/dummy_data.dart';
import '../Widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal App'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.45,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(catData.title, catData.color))
            .toList(),
      ),
    );
  }
}
