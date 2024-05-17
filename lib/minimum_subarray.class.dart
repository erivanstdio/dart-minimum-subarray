import 'dart:math';
class MinimumSubarray {
  int? target;
  List<int>? numbersArray;

  MinimumSubarray({this.target, this.numbersArray});

  getMinimumSubarray() {

    var left = 0;
    var sumOfWindow = 0;
    var minLengthOfGivenArray = double.infinity;
      
    for (var right = 0; right < numbersArray!.length; right++) {
      
      sumOfWindow += numbersArray![right];

      while(sumOfWindow >= (target as int)) {
        
        minLengthOfGivenArray = min(minLengthOfGivenArray, (right - left + 1).toDouble());
        sumOfWindow -= numbersArray![left];
        left++;
      }
    }

    return minLengthOfGivenArray == double.infinity ? 0 : minLengthOfGivenArray.toInt(); 
  }
}