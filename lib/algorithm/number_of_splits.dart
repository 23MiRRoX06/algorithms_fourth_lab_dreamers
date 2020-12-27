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
  var length = binaryNumber.length;
  var value;
  var partitioningResults = <int>[]..length = length;
  partitioningResults[length - 1] = binaryNumber[length - 1] == '0' ? -1 : 1;
  for (var i = length - 2; i >= 0; i--) {
    value = 0;
    if (binaryNumber[i] == '0') {
      partitioningResults[i] = -1;
      continue;
    }
    partitioningResults[i] = 2020;
    for (var j = i; j < length; j++) {
      value = int.parse(binaryNumber[j], radix: 2);
      if (isPowerOf(value, baseNumberToCheck)) {
        if (j == length - 1) {
          partitioningResults[i] = 1;
        } else {
          if (partitioningResults[j + 1] != -1) {
            partitioningResults[i] =
                min(partitioningResults[i], partitioningResults[j + 1] + 1);
          }
        }
      }
    }
    if (partitioningResults[i] == 2020) {
      partitioningResults[i] = -1;
    }
  }
  return partitioningResults[0];
}
