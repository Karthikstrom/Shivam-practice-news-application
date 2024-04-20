import 'package:shivam_newsapp_tutorial/models/slider_model.dart';

List<SliderModel> getSlider() {
  List<SliderModel> slider = [];
  SliderModel sliderModel = SliderModel();

  sliderModel.name = "Business";
  sliderModel.image = "images/categories/business.jpg";
  sliderModel.headlines="Publishing on the open web is broken, how generative AI could help fix it";
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.name = "General";
  sliderModel.image = "images/categories/general.jpg";
  sliderModel.headlines="Mega Block On Sunday, 07-04-2024: Mumbai Local Train Services To Be Affected On Central & Harbour Lines; Check Details";
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.name = "Entertainment";
  sliderModel.image = "images/categories/entertainment.jpg";
  sliderModel.headlines="What Is Article 371? Congress President Mallikarjun Kharge's Fumble That Fumed Amit Shah";
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.name = "Health";
  sliderModel.image = "images/categories/health.jpg";
  sliderModel.headlines="Delhi Police Recover Stolen Fortuner SUV Of BJP Chief JP Nadda; 2 Arrested Planned To Sell It In Nagaland";
  slider.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.name = "Sports";
  sliderModel.image = "images/categories/sports.jpg";
  sliderModel.headlines="VIDEO: Axar Patel's Incredible One-Handed Stunner To Dismiss Ishan Kishan During MI vs DC IPL 2024 Clash At Wankhede Stadium";
  slider.add(sliderModel);
  sliderModel = SliderModel();

  return slider;
}
