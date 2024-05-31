import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:speak_sphere/features/home/views/screens/coming_soon_screen.dart';
import 'package:speak_sphere/features/home/views/screens/streaks_screen.dart';
import 'package:speak_sphere/features/lessons/views/screens/audio_screen.dart';
import 'package:speak_sphere/utils/constants/app_drawables.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';
import 'package:speak_sphere/utils/widgets/custom_tab_bar.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: kBorderColor2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(flagIcon),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StreaksScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(fayaIcon),
                          const Text(
                            '2',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(archerIcon),
                        const Text(
                          '17',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(notifIcon),
                  ],
                ),
              ),
              const Gap(24),
              const Expanded(
                child: CustomTabBar(
                  tabs: [
                    Tab(
                      text: 'Audio Lesson',
                    ),
                    Tab(
                      text: 'Video Lesson',
                    ),
                  ],
                  children: [
                    AudioScreen(),
                    ComingSoonScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
