import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speak_sphere/features/lessons/models/audio_lesson_model.dart';
import 'package:speak_sphere/utils/constants/app_drawables.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class AudioLessonCard extends StatelessWidget {
  const AudioLessonCard({
    super.key,
    required this.audioLesson,
  });

  final AudioLessonModel audioLesson;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: size.height * .15,
            width: size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 11,
            ),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  audioLesson.backgroundImage,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  audioLesson.title,
                  style: const TextStyle(
                    fontSize: 24,
                    color: kWhite,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: size.width * .5,
                  child: Text(
                    audioLesson.description,
                    maxLines: 3,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12,
                      color: kWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -20,
          right: 10,
          child: CircleAvatar(
            radius: 24,
            backgroundColor: audioLesson.iconColor,
            child: SvgPicture.asset(playIcon),
          ),
        ),
      ],
    );
  }
}
