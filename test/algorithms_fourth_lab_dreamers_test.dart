import 'package:algorithms_fourth_lab_dreamers/algorithm/number_of_splits.dart';
import 'package:test/test.dart';

void main() {
  test('test algorithm to find minimum number of splits in binary string with condition 1', () {
    expect(findMinimumNumberOfSplits('101101101', 5), 3);
  });

    test('test algorithm to find minimum number of splits in binary string with condition 1', () {
    expect(findMinimumNumberOfSplits('100001001000010000100', 4), 5);
  });
}