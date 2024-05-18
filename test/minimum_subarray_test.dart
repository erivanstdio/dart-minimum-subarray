import 'package:minimum_subarray/minimum_subarray.class.dart';
import 'package:test/test.dart';

void main() {
  MinimumSubarray targetAndArray = MinimumSubarray(
    targetSum: 20, 
    numbersArray: [5, 1, 2, 3, 6, 4]
  );
  test('calculate minimum subarray', () {
    expect(targetAndArray.getMinimumSubarray(), 6);
  });
}
