import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shivam_newsapp_tutorial/models/slider_model.dart';
import 'package:flutter_color_models/flutter_color_models.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BreakingNewsCarousal extends StatefulWidget {
  const BreakingNewsCarousal({super.key, required this.sliders});
  final List<SliderModel> sliders;

  @override
  State<BreakingNewsCarousal> createState() => _BreakingNewsCarousalState();
}

class _BreakingNewsCarousalState extends State<BreakingNewsCarousal> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: widget.sliders.length,
          itemBuilder: (context, index, realIndex) {
            String? res = widget.sliders[index].image;
            String? res1 = widget.sliders[index].name;
            return buildImage(res!, index, res1!);
          },
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 15),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: widget.sliders.length,
          effect: const ExpandingDotsEffect(
              dotHeight: 5,
              dotWidth: 15,
              dotColor: RgbColor(217, 220, 214),
              activeDotColor: RgbColor(35, 61, 77)),
        ),
      ],
    );
  }

  Widget buildImage(String urlImage, int index, String name) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(4, 90, 4, 0),
        height: MediaQuery.of(context).size.width - 90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black26, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
        ),
      ),
    ]);
  }
}
