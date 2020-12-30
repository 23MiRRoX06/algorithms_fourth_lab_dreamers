import 'dart:io';
import 'package:algorithms_fourth_lab_dreamers/algorithm/number_of_splits.dart';

List<dynamic> takeInputValues() {
  print(
      'Please enter binary string and number you want to check (with space between them)');
  var inputValues = stdin.readLineSync().split(' ');
  return [inputValues[0], int.parse(inputValues[1])];
}

void algorithmRunner() {
  var inputValues = takeInputValues();
  var result = findMinimumNumberOfSplits(inputValues[0], inputValues[1]);
  if (result == -1) {
    print(
        'You cannot split your number (${inputValues[0]}) such that all substrings are power of ${inputValues[1]}');
  } else {
    print('Minimum number of slits is $result');
  }
}
