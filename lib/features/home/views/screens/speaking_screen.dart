import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:speak_sphere/utils/constants/app_drawables.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';
import 'package:speak_sphere/utils/widgets/primary_button.dart';

class SpeakingScreen extends StatelessWidget {
  const SpeakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: SvgPicture.asset(arrowLeftIcon),
                  ),
                  const Gap(10),
                  Expanded(
                    child: Container(
                      height: 15,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: containerBgColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: ((size.width * .9) * .6),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(24),
                      const Text(
                        'Speak this sentence',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: kText3Color,
                        ),
                      ),
                      const Gap(24),
                      Center(child: SvgPicture.asset(mic)),
                      const Gap(24),
                      const Center(
                        child: Text(
                          'Bonjour, Buchi, enchante',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            color: kText3Color,
                          ),
                        ),
                      ),
                      Gap(size.height * .18),
                      Center(child: SvgPicture.asset(micSpeak)),
                      Gap(size.height * .18),
                      const Text(
                        'Brilliant!',
                        style: TextStyle(
                          color: kText3Color,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Gap(16),
                      const Text(
                        'Meaning:',
                        style: TextStyle(
                          color: kText3Color,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Gap(16),
                      const Text(
                        'Hello, Buchi, nice to meet you.',
                        style: TextStyle(
                          color: kText3Color,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PrimaryButton(
                buttonText: "Continue",
                onPressed: () {},
                isEnabled: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
