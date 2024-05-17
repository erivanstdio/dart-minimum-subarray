import 'package:minimum_subarray/minimum_subarray.class.dart';

void main() {

  // expect the minimum subarray length to be 9:
  MinimumSubarray targetAndArray = MinimumSubarray(target: 50, numbersArray: [2,4,7,8,9,5,3,4,6,7,5,2,2,4,4,5]);

  print('Minimum Subarray Length: ${targetAndArray.getMinimumSubarray()}');
}
