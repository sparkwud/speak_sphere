import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class InterestChip extends StatelessWidget {
  const InterestChip({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedSwitcher(
        switchInCurve: Curves.bounceInOut,
        duration: const Duration(milliseconds: 300),
        child: isSelected
            ? Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: containerBgColor1,
                  border: Border.all(color: kBorderColor1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: kWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            : DottedBorder(
                borderType: BorderType.RRect,
                color: kBorderColor,
                dashPattern: const [6, 4],
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                radius: const Radius.circular(30),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: kBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
      ),
    );
  }
}
