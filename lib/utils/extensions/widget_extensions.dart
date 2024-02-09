import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// SIZEDBOX EXTENSIONS
extension WidgetExtensions on double {
  Widget get sbH => SizedBox(
        height: h,
      );

  Widget get sbW => SizedBox(
        width: w,
      );

  EdgeInsetsGeometry get padA => EdgeInsets.all(this);

  EdgeInsetsGeometry get padV => EdgeInsets.symmetric(vertical: h);

  EdgeInsetsGeometry get padH => EdgeInsets.symmetric(horizontal: w);
}

extension DismissKeyboard on Widget {
  void dismissKeyboard() => FocusManager.instance.primaryFocus?.unfocus();
}

// INKWELL EXTENSION
extension InkWellExtension on Widget {
  InkWell tap({
    required GestureTapCallback? onTap,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    BorderRadius? borderRadius,
    Color? splashColor = Colors.transparent,
    Color? highlightColor = Colors.transparent,
  }) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      borderRadius: borderRadius ?? BorderRadius.circular(12.r),
      splashColor: splashColor,
      highlightColor: highlightColor,
      child: this,
    );
  }
}

// STRING EXTENSIONS
extension ImagePath on String {
  String get png => 'lib/assets/images/$this.png';
  String get jpg => 'lib/assets/images/$this.jpg';
  String get gif => 'lib/assets/images/$this.gif';
}

extension IconPath on String {
  String get iconPng => 'lib/assets/icons/$this.png';
  String get iconSvg => 'lib/assets/icons/$this.svg';
}

extension SvgPictureExtension on String {
  SvgPicture svgPicture({
    Color? color,
    double? height,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      this,
      height: height,
      fit: fit,
      color: color,
    );
  }
}

extension ImageExtension on String {
  Image myImage({
    Color? color,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      this,
      height: height,
      fit: fit,
      color: color,
    );
  }
}

// ALIGNMENT EXTENSIONS
extension AlignExtension on Widget {
  Align align(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Align alignCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }

  Align alignCenterLeft() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Align alignCenterRight() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }

  Align alignTopCenter() {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }

  Align alignBottomCenter() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }

  Align alignBottomLeft() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: this,
    );
  }

  Align alignBottomRight() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }

  Align alignTopRight() {
    return Align(
      alignment: Alignment.topRight,
      child: this,
    );
  }

  Align alignTopLeft() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }

  // Add more alignment methods as needed

  // Example: alignTopCenter, alignBottomRight, etc.
}
