import 'dart:math';

bool isPowerOf(int number, int baseNumberToCheck) {
  while (number > 1) {
    if (number % baseNumberToCheck != 0) {
      return false;
    }
    number = number ~/ baseNumberToCheck;
  }
  return true;
}

int findMinimumNumberOfSplits(String binaryNumber, int baseNumberToCheck) {
  var partitioningResult = <int>[]..length = binaryNumber.length + 1;
  partitioningResult[0] = 0;
  for (var i = 1; i <= binaryNumber.length; ++i) {
    partitioningResult[i] = 2020;
    for (var j = 1; j <= i; ++j) {
      if (binaryNumber[j - 1] == '0') {
        continue;
      }
      var number = int.parse(binaryNumber.substring(j - 1, i), radix: 2);
      if (isPowerOf(number, baseNumberToCheck)) {
        partitioningResult[i] =
            min(partitioningResult[i], partitioningResult[j - 1] + 1);
      }
    }
  }
  return partitioningResult[binaryNumber.length] == 2020
      ? -1
      : partitioningResult[binaryNumber.length];
}
