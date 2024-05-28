import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_sphere/utils/constants/app_drawables.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(broIcon),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 40),
              SvgPicture.asset(spin),
              const SizedBox(width: 50),
            ],
          ),
          const Text(
            'Coming Soon!',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: kSecondaryColor,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'We’ll be up soon, keep an eye on us.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: kText3Color,
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 50),
              SvgPicture.asset(flash),
            ],
          ),
        ],
      ),
    );
  }
}
