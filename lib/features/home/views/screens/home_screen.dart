import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:speak_sphere/features/home/models/home_grid_model.dart';
import 'package:speak_sphere/features/home/views/screens/streaks_screen.dart';
import 'package:speak_sphere/features/home/views/widgets/home_grid.dart';
import 'package:speak_sphere/utils/constants/app_drawables.dart';
import 'package:speak_sphere/utils/routes/app_routes.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<HomeGridModel> homeGrids = [
      HomeGridModel(
        title: "Reading",
        progress: 20,
        icon: bookIcon,
      ),
      HomeGridModel(
        title: "Listening",
        progress: 50,
        icon: headPhoneIcon,
      ),
      HomeGridModel(
        title: "Writing",
        progress: 70,
        icon: writingIcon,
      ),
      HomeGridModel(
        title: "Speaking",
        progress: 45,
        icon: speakingIcon,
        onTap: () => context.push(AppRoutes.speaking),
      ),
      HomeGridModel(
        title: "Books",
        progress: 80,
        icon: booksIcon,
      ),
      HomeGridModel(
        title: "Quizzes",
        progress: 60,
        icon: quizIcon,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
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
                  ),
                  const Gap(18),
                  const CircleAvatar(
                    backgroundColor: containerBgColor2,
                    radius: 20,
                    backgroundImage: AssetImage(avatarIcon),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Gap(16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Your\nLearning Sphere',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: kText2Color,
                            ),
                          ),
                          SvgPicture.asset(gridIcon),
                        ],
                      ),
                      const Gap(24),
                      GridView.builder(
                        itemCount: homeGrids.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 36,
                          mainAxisSpacing: 24,
                        ),
                        itemBuilder: (context, index) {
                          return HomeGrid(
                            model: homeGrids[index],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
