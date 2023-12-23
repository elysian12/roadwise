import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadwise/common/constants/app_colors.dart';

import '../../common/widgets/apptext_field.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  static const String routeName = '/SignInScreen-page';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const AppTextField(
              title: 'Email Address',
              hintText: 'Email Address',
              prefixIcon: FontAwesomeIcons.user,
            ),
            const SizedBox(
              height: 24,
            ),
            const AppTextField(
              title: 'Password',
              hintText: 'Password',
              prefixIcon: FontAwesomeIcons.key,
              suffixIcon: Icons.visibility,
              obscureText: true,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  label: const Text('Forgot Password?'),
                  icon: const CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.primaryGreenColor,
                    child: Icon(
                      FontAwesomeIcons.info,
                      size: 12,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    iconColor: AppColors.primaryGreenColor,
                    foregroundColor: AppColors.primaryFontColor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sign In'),
            )
          ],
        ),
      ),
    );
  }
}
