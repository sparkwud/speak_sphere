import 'package:flutter/material.dart';
import 'package:speak_sphere/utils/constants/app_drawables.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class AudioLessonModel {
  final String backgroundImage;
  final String title;
  final String description;
  final Color iconColor;
  AudioLessonModel({
    required this.backgroundImage,
    required this.title,
    required this.description,
    required this.iconColor,
  });

  static List<AudioLessonModel> audioLessons = [
    AudioLessonModel(
      backgroundImage: bg1,
      title: 'First Trip',
      description:
          'Here you will listen to conversations between tourists, and learn to speak together with them!',
      iconColor: kBg1,
    ),
    AudioLessonModel(
      backgroundImage: bg2,
      title: 'Freelance Work',
      description:
          'After taking this classes, you will be able to take orders from foreigners! ',
      iconColor: containerBgColor,
    ),
    AudioLessonModel(
      backgroundImage: bg3,
      title: 'First Meeting',
      description:
          'You will learn to communicate with your colleagues and understand them!',
      iconColor: kBg2,
    ),
    AudioLessonModel(
      backgroundImage: bg4,
      title: 'Meeting With Partners',
      description:
          'You will learn to communicate with your colleagues and understand them!',
      iconColor: kBlack.withOpacity(.89),
    ),
  ];
}
