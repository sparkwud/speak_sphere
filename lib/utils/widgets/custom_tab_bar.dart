import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    this.initialIndex = 0,
    this.length = 2,
    required this.tabs,
    required this.children,
    this.containerHeight,
    this.containerPadding,
    this.containerColor,
    this.indicatorColor,
    this.labelColor,
    this.unselectedLabelColor,
    this.containerBorderRadius,
    this.indicatorBorderRadius,
    this.splashBorderRadius,
  });

  final int initialIndex;
  final int length;
  final List<Widget> tabs;
  final List<Widget> children;
  final double? containerHeight;
  final EdgeInsetsGeometry? containerPadding;
  final Color? containerColor;
  final Color? indicatorColor;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final BorderRadiusGeometry? containerBorderRadius;
  final BorderRadiusGeometry? indicatorBorderRadius;
  final BorderRadius? splashBorderRadius;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialIndex,
      length: length,
      child: Column(
        children: [
          Container(
            height: containerHeight ?? 55.h,
            padding: containerPadding ?? EdgeInsets.all(5.h),
            decoration: BoxDecoration(
              borderRadius: containerBorderRadius ?? BorderRadius.circular(50),
              border: Border.all(color: const Color(0xFF908A89)),
              color: containerColor ?? Colors.transparent,
            ),
            child: TabBar(
              dividerColor: Colors.transparent,
              splashBorderRadius:
                  splashBorderRadius ?? BorderRadius.circular(50),
              labelColor: labelColor ?? Colors.white,
              unselectedLabelColor:
                  unselectedLabelColor ?? const Color(0xFF908A89),
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: "Josefin Sans",
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius:
                    indicatorBorderRadius ?? BorderRadius.circular(50),
                color: indicatorColor ?? kSecondaryColor,
              ),
              tabs: [...tabs],
            ),
          ),
          const Gap(16),
          Expanded(
            child: TabBarView(
              children: [...children],
            ),
          ),
        ],
      ),
    );
  }
}
