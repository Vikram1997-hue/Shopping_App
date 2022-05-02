import 'package:untitled/constants/app_images.dart';

class OnboardingData {

  String title, subtitle, imageLink;
  OnboardingData({
    required this.title,
    required this.subtitle,
    required this.imageLink
  });
}

List<OnboardingData> mydata = [
  OnboardingData(
      title: "Choose Product",
      subtitle: 'A product is the item offered for sale. A product can be a service or an item. It can be physical or in virtual or cyber form',
      imageLink: AppImages.illustration1,
  ),
  OnboardingData(
      title: "Make Payment",
      subtitle: 'Payment is the transfer of money services in exchange product or Payments typically made terms agreed',
      imageLink: AppImages.illustration2,
  ),
  OnboardingData(
      title: "Get Your Order",
      subtitle: 'Business or commerce an order is a stated intention either spoken to engage in a commercial transaction specific products ',
      imageLink: AppImages.illustration3,
  ),
];
