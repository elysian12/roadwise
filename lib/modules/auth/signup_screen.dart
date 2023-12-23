import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadwise/common/widgets/apptext_field.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  static const String routeName = '/SignUpScreen-page';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
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
              prefixIcon: FontAwesomeIcons.inbox,
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                Expanded(
                  child: AppTextField(
                    title: 'First Name',
                    hintText: 'First Name',
                    prefixIcon: FontAwesomeIcons.user,
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: AppTextField(
                    title: 'Last Name',
                    hintText: 'Last Name',
                    prefixIcon: FontAwesomeIcons.user,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const AppTextField(
              title: 'Phone Number',
              hintText: 'Phone Number',
              prefixIcon: FontAwesomeIcons.inbox,
            ),
            const SizedBox(
              height: 24,
            ),
            const AppTextField(
              title: 'Create Password',
              hintText: 'Create Password',
              prefixIcon: FontAwesomeIcons.key,
              suffixIcon: Icons.visibility,
              obscureText: true,
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}
