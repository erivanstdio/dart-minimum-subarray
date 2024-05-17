import 'dart:math';

class MinimumSubarray {
  final int target;
  final List<int> numbersArray;

  MinimumSubarray({required this.target, required this.numbersArray});

  getMinimumSubarray() {

    var start = 0;
    var currentSum = 0;
    var minSubarrayLength = double.infinity;
      
    for (var end = 0; end < numbersArray.length; end++) {
      
      currentSum += numbersArray[end];

      while(currentSum >= target) {

        minSubarrayLength = min(minSubarrayLength, (end - start + 1).toDouble());
        currentSum -= numbersArray[start];
        start++;
      }
    }

    return minSubarrayLength == double.infinity ? 0 : minSubarrayLength.toInt(); 
  }
}