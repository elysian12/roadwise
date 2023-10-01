import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roadwise/common/constants/app_colors.dart';
import 'package:roadwise/common/extension/context_ext.dart';
import 'package:roadwise/modules/onboarding/models/onboarding_model.dart';
import 'package:roadwise/router/app_router.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currenIndex = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  splashColor: AppColors.primaryGreenColor.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Skip',
                      style: context.textTheme.titleLarge!.copyWith(
                        color: AppColors.primaryGreenColor,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (value) => setState(() => currenIndex = value),
                  itemCount: OnBoardingModel.list.length,
                  itemBuilder: (context, index) {
                    final model = OnBoardingModel.list[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(model.imgPath),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          model.title,
                          style: context.textTheme.headlineMedium!.copyWith(
                            fontSize: 31,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              BottomButtons(
                currenIndex: currenIndex,
                controller: controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomButtons extends StatelessWidget {
  final int currenIndex;
  final PageController controller;
  const BottomButtons(
      {super.key, required this.currenIndex, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          3,
          (index) {
            bool selected = currenIndex == index;
            return Container(
              height: 10,
              width: selected ? 24 : 10,
              margin: EdgeInsets.symmetric(horizontal: selected ? 4 : 2),
              decoration: BoxDecoration(
                shape: selected ? BoxShape.rectangle : BoxShape.circle,
                color: selected
                    ? AppColors.primaryFontColor
                    : AppColors.primaryFontColor.withOpacity(0.1),
                borderRadius: selected ? BorderRadius.circular(4) : null,
              ),
            );
          },
        ),
        const Spacer(),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: CircularProgressIndicator(
                value: (currenIndex + 1) / 3,
                color: currenIndex == 2
                    ? AppColors.primaryGreenColor
                    : AppColors.primaryFontColor,
              ),
            ),
            FloatingActionButton(
              backgroundColor: AppColors.primaryFontColor,
              onPressed: () {
                if (currenIndex == 2) {
                  context.router.pushAndPopUntil(
                    const WelcomeRoute(),
                    predicate: (route) => false,
                  );
                  return;
                }
                controller.animateToPage(currenIndex + 1,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeOut);
              },
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        )
      ],
    );
  }
}
