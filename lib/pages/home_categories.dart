// import 'package:flutter/material.dart';
// import 'package:shivam_newsapp_tutorial/models/category_model.dart';

// class DisplayCategories extends StatelessWidget {
//   const DisplayCategories({super.key, required this.categories});

//   final List<CategoryModel> categories;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         width: double.infinity,
//         child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: categories.length,
//             itemBuilder: (context, index) {
//               return CategoryTile(
//                 image: categories[index].image,
//                 categoryName: categories[index].categoryName,
//               );
//             }),
//       ),
//     );
//   }
// }

// class CategoryTile extends StatelessWidget {
//   const CategoryTile(String? image, String? categoryName, {super.key, this.categoryName, this.image});
//   final image, categoryName;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(left: 16),
//       child: Stack(children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(7),
//           child: ColorFiltered(
//             colorFilter: const ColorFilter.mode(
//                 Color.fromARGB(104, 0, 0, 0), BlendMode.color),
//             child: Image.asset(
//               image,
//               width: 120,
//               height: 60,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Container(
//           //color: Colors.black,
//           width: 120,
//           height: 60,
//           child: Center(
//             child: Text(
//               categoryName,
//               style:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }