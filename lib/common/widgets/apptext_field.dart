import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadwise/common/constants/app_colors.dart';
import 'package:roadwise/common/extension/context_ext.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String title;
  final bool obscureText;
  final bool showPassword;
  final Function()? onSuffixIconTap;
  final TextInputType? keyboardType;

  const AppTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.showPassword = false,
    required this.title,
    this.onSuffixIconTap,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.textTheme.titleSmall!),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          cursorColor: AppColors.primaryGreenColor,
          obscureText: obscureText,
          obscuringCharacter: '*',
          keyboardType: keyboardType,
          style: context.textTheme.bodyLarge!
              .copyWith(color: AppColors.primaryFontColor),
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
            suffixIcon: suffixIcon != null
                ? InkWell(
                    onTap: onSuffixIconTap,
                    child: Container(
                      height: 10,
                      width: 10,
                      alignment: Alignment.center,
                      child: FaIcon(
                        suffixIcon,
                        size: 18,
                      ),
                    ),
                  )
                : null,
            hintText: hintText,
            hintStyle: context.textTheme.bodyLarge!
                .copyWith(color: AppColors.primaryFontColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            // filled: true,
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(16),
            //   borderSide: const BorderSide(
            //     color: AppColors.primaryFontColor,
            //   ),
            // ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColors.primaryGreenColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
