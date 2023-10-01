import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            AppTextField(
              title: 'Phone Number',
              hintText: 'Phone Number',
              prefixIcon: FontAwesomeIcons.user,
            ),
          ],
        ),
      ),
    );
  }
}
