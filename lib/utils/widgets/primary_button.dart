import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.isLoading = false,
    required this.buttonText,
    this.isEnabled = false,
    required this.onPressed,
    this.borderRadius,
  });

  final bool isEnabled;
  final bool isLoading;
  final String buttonText;
  final double? borderRadius;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? () {} : onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: isEnabled ? kSecondaryColor : const Color(0xFF908A89),
        minimumSize: Size(double.infinity, 56.h),
        // maximumSize: Size(double.infinity, 56.h),
        padding: EdgeInsets.symmetric(vertical: 18.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 20.r),
        ),
      ),
      child: isLoading
          ? Transform.scale(
              scale: 0.8,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Text(
              buttonText,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontSize: 16,
                    // color: Colors.white,
                    color: isEnabled ? Colors.white : Colors.grey[400],

                    fontWeight: FontWeight.w900,
                  ),
            ),
    );
  }
}
