import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final interestsNotifierProvider =
    StateNotifierProvider<InterestsNotifier, List<String>>((ref) {
  return InterestsNotifier();
});

class InterestsNotifier extends StateNotifier<List<String>> {
  InterestsNotifier() : super([]);

  void toggleInterest(String interest, BuildContext context) {
    if (state.contains(interest)) {
      state = state.where((i) => i != interest).toList();
    } else if (state.length < 6) {
      state = [...state, interest];
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 1),
          content: Text('You can only select six(6) interests!'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}
