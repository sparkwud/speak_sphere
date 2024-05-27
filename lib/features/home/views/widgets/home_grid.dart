import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:speak_sphere/features/home/models/home_grid_model.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({
    super.key,
    required this.model,
  });
  final HomeGridModel model;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: model.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kBorderColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(model.icon),
            const Gap(10),
            Text(
              model.title,
              style: const TextStyle(
                color: kBlack,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Gap(10),
            Text(
              'You completed ${model.progress}%',
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: kText1Color,
              ),
            ),
            const Gap(5),
            Container(
              height: 8,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: containerBgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: size.width / 3 * (model.progress / 100),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
