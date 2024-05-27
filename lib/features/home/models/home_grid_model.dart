import 'package:flutter/material.dart';

class HomeGridModel {
  HomeGridModel({
    required this.title,
    required this.progress,
    required this.icon,
    this.onTap,
  });

  final String title;
  final int progress;
  final String icon;
  final VoidCallback? onTap;
}
