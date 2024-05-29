import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:speak_sphere/features/lessons/models/audio_lesson_model.dart';
import 'package:speak_sphere/features/lessons/views/widgets/audio_lesson_card.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioViewState();
}

class _AudioViewState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    final List<AudioLessonModel> items = AudioLessonModel.audioLessons;
    return ListView.separated(
      separatorBuilder: (context, index) => const Gap(32),
      // physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => AudioLessonCard(
        audioLesson: items[index],
      ),
    );
  }
}
