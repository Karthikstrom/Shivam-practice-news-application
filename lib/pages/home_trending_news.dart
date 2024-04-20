// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:shivam_newsapp_tutorial/models/slider_model.dart';

// class TrendingNewsSection extends StatelessWidget {
//   const TrendingNewsSection({super.key, required this.sliders});

//   final List<SliderModel> sliders;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Expanded(
//         child: ListView.builder(
//           itemCount: sliders.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//                 color: Colors.white,
//                 shadowColor: Colors.blueGrey,
//                 elevation: 2,
//                 child: trendingTile(
//                     sliders[index].image, sliders[index].headlines));
//           },
//         ),
//       ),
//     );
//   }

//   Widget trendingTile(imageUrl, headlines) {
//     FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
//     Size size = view.physicalSize;
//     double width = size.width;

//     return Padding(
//       padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
//       child: Row(children: [
//         Container(
//           height: width * 0.1,
//           width: width * 0.1,
//           child: ClipRRect(
//               borderRadius: BorderRadius.circular(6),
//               child: Image.asset(imageUrl, fit: BoxFit.cover)),
//         ),
//         const SizedBox(width: 5),
//         textblock(
//           headlines,
//         )
//       ]),
//     );
//   }

//   Widget textblock(headlines) {
//     FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
//     Size size = view.physicalSize;
//     double width = size.width;
//     return Expanded(
//       child: Container(
//         height: width * 0.1,
//         child: Column(children: [
//           Text(headlines, style: const TextStyle(fontWeight: FontWeight.w500)),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(headlines,
//               style:
//                   const TextStyle(fontWeight: FontWeight.w200, fontSize: 10)),
//         ]),
//       ),
//     );
//   }
// }
