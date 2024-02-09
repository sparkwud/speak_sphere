import 'dart:math' as math;

import 'package:flutter/services.dart';

class PhoneNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final pattern = RegExp(r'^(\d{1,4})(\d{1,3})?(\d{1,3})?$');
    final match = pattern.firstMatch(newValue.text);

    if (match != null) {
      final firstPart = match.group(1);
      final secondPart = match.group(2);
      final thirdPart = match.group(3);

      String formattedValue = '';

      if (firstPart != null) {
        formattedValue += firstPart;
      }

      if (secondPart != null) {
        formattedValue += ' $secondPart';
      }

      if (thirdPart != null) {
        formattedValue += ' $thirdPart';
      }

      return TextEditingValue(
        text: formattedValue,
        selection: TextSelection.collapsed(offset: formattedValue.length),
      );
    }

    return newValue;
  }

  static String getUnmaskedValue(String formattedValue) {
    return formattedValue.substring(1).replaceAll(RegExp(r'\D'), '');
  }
}

// class PhoneNumberFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//     TextEditingValue oldValue,
//     TextEditingValue newValue,
//   ) {
//     // Remove any non-digit characters
//     String newText = newValue.text.replaceAll(RegExp(r'\D'), '');

//     // Add space after every 3 characters
//     newText = newText.replaceAllMapped(RegExp(r'^(\d{3})(\d{3})(\d{3})$'),
//         (Match match) => '${match[1]} ${match[2]} ${match[3]}');

//     return newValue.copyWith(
//       text: newText,
//       selection: TextSelection.collapsed(offset: newText.length),
//     );
//   }

//   String getUnmaskedValue(String maskedValue) {
//     return maskedValue.replaceAll(RegExp(r'\D'), '');
//   }
// }

class NameFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Capitalize each word in the new text
    final newText = newValue.text.split(' ').map((word) {
      if (word.isNotEmpty) {
        return word[0].toUpperCase() + word.substring(1);
      } else {
        return '';
      }
    }).join(' ');

    return newValue.copyWith(text: newText);
  }
}

class TimeInputFormatter extends TextInputFormatter {
  late RegExp _exp;
  TimeInputFormatter() {
    _exp = RegExp(r'^[0-9:]+$');
  }

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (_exp.hasMatch(newValue.text)) {
      TextSelection newSelection = newValue.selection;

      String value = newValue.text;
      String newText;

      String leftChunk = '';
      String rightChunk = '';

      if (value.length >= 8) {
        if (value.substring(0, 7) == '00:00:0') {
          leftChunk = '00:00:';
          rightChunk = value.substring(leftChunk.length + 1, value.length);
        } else if (value.substring(0, 6) == '00:00:') {
          leftChunk = '00:0';
          rightChunk = "${value.substring(6, 7)}:${value.substring(7)}";
        } else if (value.substring(0, 4) == '00:0') {
          leftChunk = '00:';
          rightChunk =
              "${value.substring(4, 5)}${value.substring(6, 7)}:${value.substring(7)}";
        } else if (value.substring(0, 3) == '00:') {
          leftChunk = '0';
          rightChunk =
              "${value.substring(3, 4)}:${value.substring(4, 5)}${value.substring(6, 7)}:${value.substring(7, 8)}${value.substring(8)}";
        } else {
          leftChunk = '';
          rightChunk =
              "${value.substring(1, 2)}${value.substring(3, 4)}:${value.substring(4, 5)}${value.substring(6, 7)}:${value.substring(7)}";
        }
      } else if (value.length == 7) {
        if (value.substring(0, 7) == '00:00:0') {
          leftChunk = '';
          rightChunk = '';
        } else if (value.substring(0, 6) == '00:00:') {
          leftChunk = '00:00:0';
          rightChunk = value.substring(6, 7);
        } else if (value.substring(0, 1) == '0') {
          leftChunk = '00:';
          rightChunk =
              "${value.substring(1, 2)}${value.substring(3, 4)}:${value.substring(4, 5)}${value.substring(6, 7)}";
        } else {
          leftChunk = '';
          rightChunk =
              "${value.substring(1, 2)}${value.substring(3, 4)}:${value.substring(4, 5)}${value.substring(6, 7)}:${value.substring(7)}";
        }
      } else {
        leftChunk = '00:00:0';
        rightChunk = value;
      }

      if (oldValue.text.isNotEmpty && oldValue.text.substring(0, 1) != '0') {
        if (value.length > 7) {
          return oldValue;
        } else {
          leftChunk = '0';
          rightChunk =
              "${value.substring(0, 1)}:${value.substring(1, 2)}${value.substring(3, 4)}:${value.substring(4, 5)}${value.substring(6, 7)}";
        }
      }

      newText = leftChunk + rightChunk;

      newSelection = newValue.selection.copyWith(
        baseOffset: math.min(newText.length, newText.length),
        extentOffset: math.min(newText.length, newText.length),
      );

      return TextEditingValue(
        text: newText,
        selection: newSelection,
        composing: TextRange.empty,
      );
    }
    return oldValue;
  }
}

// class CustomTextInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//     TextEditingValue oldValue,
//     TextEditingValue newValue,
//   ) {
//     final pattern = RegExp(r'^([0-9]{0,1})(\d{1,3})?(\d{1,3})?(\d{1,3})?$');
//     final match = pattern.firstMatch(newValue.text);

//     if (match != null) {
//       final firstPart = match.group(1);
//       final secondPart = match.group(2);
//       final thirdPart = match.group(3);
//       final fourthPart = match.group(4);

//       String formattedValue = '';

//       if (firstPart != null) {
//         formattedValue += '($firstPart)';
//       }

//       if (secondPart != null) {
//         formattedValue += ' $secondPart';
//       }

//       if (thirdPart != null) {
//         formattedValue += ' $thirdPart';
//       }

//       if (fourthPart != null) {
//         formattedValue += ' $fourthPart';
//       }

//       return TextEditingValue(
//         text: formattedValue,
//         selection: TextSelection.collapsed(offset: formattedValue.length),
//       );
//     }

//     return newValue;
//   }
// }
