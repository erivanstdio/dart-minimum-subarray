import 'package:minimum_subarray/minimum_subarray.class.dart';

void main() {

  MinimumSubarray targetAndArray = MinimumSubarray(target: 7, numbersArray: [2,3,1,2,4,3]);

  print('Minimum Subarray: ${targetAndArray.getMinimumSubarray()}');
}
