import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roadwise/common/constants/app_assets.dart';
import 'package:roadwise/router/app_router.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateTo() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      context.router.push(const OnBoardingRoute());
    });
  }

  @override
  void initState() {
    super.initState();
    navigateTo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElasticInDown(
          duration: const Duration(milliseconds: 700),
          child: SvgPicture.asset(AppAsset.icSplashLogo),
        ),
      ),
    );
  }
}
