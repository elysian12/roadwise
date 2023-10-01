import 'package:roadwise/common/constants/app_assets.dart';

class OnBoardingModel {
  final String title;
  final String imgPath;

  OnBoardingModel({required this.title, required this.imgPath});

  static List<OnBoardingModel> list = [
    OnBoardingModel(
      title: 'Drive smarter knowing the best route and time to go',
      imgPath: AppAsset.illusOnboardOne,
    ),
    OnBoardingModel(
      title: 'Get real-time traffic information and avoid congested roads',
      imgPath: AppAsset.illusOnboardTwo,
    ),
    OnBoardingModel(
      title: 'Start planning your trips and save time on the road',
      imgPath: AppAsset.illusOnboardThree,
    ),
  ];
}
