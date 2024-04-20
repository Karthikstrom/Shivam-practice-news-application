import 'package:flutter/material.dart';
import 'package:shivam_newsapp_tutorial/models/category_model.dart';

class CategoriesHeader extends StatelessWidget {
  const CategoriesHeader({super.key, required this.categories});

  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return categoryTile(
              categories[index].image, categories[index].categoryName);
        },
      ),
    );
  }

  Widget categoryTile(image, categoryName) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(left:5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(image, height: 150, width: 100, fit: BoxFit.cover),
        ),
      ),
      Container(
        height: 150,
        width: 100,
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.fromLTRB(18, 0, 0, 5),
          child: Text(
            categoryName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ]);
  }
}
