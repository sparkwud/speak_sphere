import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:speak_sphere/features/home/views/screens/coming_soon_screen.dart';
import 'package:speak_sphere/features/home/views/screens/home_screen.dart';
import 'package:speak_sphere/features/lessons/views/screens/lesson_screen.dart';
import 'package:speak_sphere/utils/constants/app_drawables.dart';
import 'package:speak_sphere/utils/theme/pallete.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  late AnimationController _comingSoonController;

  late Animation<double> _comingSoonAnimation;

  late Animation<double> _slideInAnimation;

  @override
  void dispose() {
    _controller.dispose();
    _comingSoonController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _slideInAnimation = Tween<double>(begin: -200, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );
    _comingSoonController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _comingSoonAnimation = Tween<double>(begin: -500, end: 0).animate(
      CurvedAnimation(
        parent: _comingSoonController,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    super.initState();
  }

  List<Widget> _screens() {
    return [
      const HomeScreen(),
      const LessonScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
      // const LessonScreen(
      //     // slideInAnimation: _slideInAnimation,
      //     ),
      // const ComingSoonScreen(
      //     // slideInAnimation: _comingSoonAnimation,
      //     ),
      // const StreaksScreen(
      //     // slideInAnimation: _comingSoonAnimation,
      //     ),
      // const SpeakingScreen(
      //     // slideInAnimation: _comingSoonAnimation,
      //     ),
    ];
  }

  int currentIndex = 0;
  void onNavBarTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer<NavBarNotifier>(
    //   builder: (context, notifier, _) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: _screens(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: scaffoldBg,
        elevation: 3,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        // selectedLabelStyle: const TextStyle(fontSize: 0),
        // unselectedLabelStyle: const TextStyle(fontSize: 0),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          onNavBarTapped(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: NavBarIcon(
              icon: homeIcon,
              isSelected: currentIndex == 0,
              label: 'Home',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(
              icon: lessonIcon,
              isSelected: currentIndex == 1,
              label: 'Lesson',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(
              icon: exerciseIcon,
              isSelected: currentIndex == 2,
              label: 'Exercises',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(
              icon: gamesIcon,
              isSelected: currentIndex == 3,
              label: 'Games',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: NavBarIcon(
              icon: chatIcon,
              isSelected: currentIndex == 4,
              label: 'Chats',
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.label,
  });
  final String icon;
  final bool isSelected;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedOpacity(
          opacity: isSelected ? 1 : 0,
          duration: const Duration(milliseconds: 200),
          child: SvgPicture.asset(tabIcon),
        ),
        const Gap(6),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          switchInCurve: Curves.bounceIn,
          child: SvgPicture.asset(
            icon,
            // ignore: deprecated_member_use
            color: isSelected ? kSecondaryColor : kText1Color,
          ),
        ),
        const Gap(3),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          switchInCurve: Curves.bounceIn,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? kSecondaryColor : kText1Color,
            ),
          ),
        ),
      ],
    );
  }
}
