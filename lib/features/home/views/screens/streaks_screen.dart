import 'dart:math' as math;

import 'package:flutter/material.dart';

class StreaksScreen extends StatelessWidget {
  const StreaksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: const Color(0xFFF6F6F6),
      backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0),
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(),
        title: const Text(
          "Streaks",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        //  actions: [
        //    IconButton(
        //      onPressed: () {},
        //      icon: const Icon(Icons.more_vert),
        //    ),
        // ],
      ),
      body: const Center(
        child: Text(
          "Streaks Screen",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
