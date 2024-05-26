import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:speak_sphere/features/home/controllers/selected_interest_provider.dart';
import 'package:speak_sphere/features/home/views/widgets/interest_chip.dart';
import 'package:speak_sphere/utils/constants/app_drawables.dart';
import 'package:speak_sphere/utils/routes/app_routes.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';
import 'package:speak_sphere/utils/widgets/primary_button.dart';

class InterestsScreen extends ConsumerWidget {
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> interests = [
      'Studies',
      'Reading',
      'Technologies',
      'Travel',
      'Psychology',
      'Gaming',
      'TV/Movies',
      'Sports',
      'Languages',
      'Fashion',
      'Fitness',
      'Pets',
      'Food',
      'Climate Change',
      'Self-care',
      'Work life',
      'Culture',
      'Design',
      'Sociology',
      'Music',
      'Outdoor',
      'Networking',
      'Romance',
      'Shopping',
      'Sight-seeing',
    ];

    final selectedInterests = ref.watch(interestsNotifierProvider);
    final interestNotifier = ref.read(interestsNotifierProvider.notifier);
    return Scaffold(
      backgroundColor: scaffoldBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 8,
          ).copyWith(bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(arrowLeftIcon),
                  const Gap(10),
                  Expanded(
                    child: Container(
                      height: 15,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: containerBgColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: LayoutBuilder(
                        builder: (
                          BuildContext context,
                          BoxConstraints constraints,
                        ) {
                          final containerWidth = constraints.maxWidth;

                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width:
                                containerWidth * (selectedInterests.length / 6),
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const Gap(10),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    switchInCurve: Curves.bounceIn,
                    child: Text(
                      '${selectedInterests.length}/6',
                      style: const TextStyle(
                        color: kBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(24),
              const Text(
                "What interests you?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kBlack,
                ),
              ),
              const Gap(10),
              const Text(
                "Select all that applies",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: kText1Color,
                ),
              ),
              const Gap(24),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: List.generate(
                          interests.length,
                          (index) => InterestChip(
                            text: interests[index],
                            onTap: () => interestNotifier.toggleInterest(
                              interests[index],
                              context,
                            ),
                            isSelected:
                                selectedInterests.contains(interests[index]),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: containerBgColor1,
                          border: Border.all(color: kBorderColor1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Add other',
                              style: TextStyle(
                                color: kWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Gap(4),
                            Icon(
                              Icons.add,
                              size: 15,
                              color: kWhite,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PrimaryButton(
                  isEnabled: selectedInterests.length == 6,
                  buttonText: "Continue",
                  onPressed: () {
                    if (selectedInterests.length == 6) {
                      context.push(AppRoutes.navBar);
                    }
                  },
                ),
              ),
              // const Gap(8),
              Center(
                child: TextButton(
                  onPressed: () => context.push(AppRoutes.navBar),
                  child: const Text(
                    'Skip for now',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: kSecondaryColor,
                    ),
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
