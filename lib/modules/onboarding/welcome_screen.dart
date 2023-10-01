import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roadwise/common/constants/app_assets.dart';
import 'package:roadwise/common/extension/context_ext.dart';
import 'package:roadwise/router/app_router.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/WelcomeScreen-page';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(AppAsset.illusOnboardOne),
              const SizedBox(
                height: 60,
              ),
              Text(
                'Get Started!',
                style: context.textTheme.headlineMedium!.copyWith(
                  fontSize: 31,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () => context.router.push(const SignUpRoute()),
                child: const Text('Create Account'),
              ),
              const SizedBox(
                height: 23,
              ),
              OutlinedButton(
                onPressed: () => context.router.push(const SignInRoute()),
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
