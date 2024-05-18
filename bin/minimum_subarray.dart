import 'dart:io';
import 'package:minimum_subarray/input_array.class.dart';
import 'package:minimum_subarray/minimum_subarray.class.dart';

void main() {
  // String? arrayInput = stdin.readLineSync();
  // List<int> arrayStoredInput = [2, 1, 3];

  print('Insert a list of numbers separeted by \',\': ');

  InputArray numberArray = InputArray(stdin.readLineSync());

  numberArray.castArray();

  print('Insert a target of sum: ');

  Target? inputTarget = Target(stdin.readLineSync() as String);

  inputTarget.castTarget();

  MinimumSubarray targetAndArray = MinimumSubarray(
    targetSum: inputTarget.number, 
    numbersArray: numberArray.intListArray
  );

  print('hey, look at the target: ${inputTarget.target}');
  print('Minimum Subarray Length: ${targetAndArray.getMinimumSubarray()}');

////////////////////// MOCKS:

  // expect result to be 6:
  // MinimumSubarray mockedExample =
  //     MinimumSubarray(targetSum: 20, numbersArray: [5, 1, 2, 3, 6, 4]);

  // print('hey, look: $arrayStoredInput');
  // print('Minimum Subarray Length from example 2: ${mockedExample.getMinimumSubarray()}');
}
