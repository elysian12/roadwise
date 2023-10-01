import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadwise/common/extension/context_ext.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final String title;

  const AppTextField(
      {super.key, this.hintText, this.prefixIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null
                ? Container(
                    height: 10,
                    width: 10,
                    alignment: Alignment.center,
                    child: FaIcon(
                      prefixIcon,
                      size: 18,
                    ),
                  )
                : null,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
