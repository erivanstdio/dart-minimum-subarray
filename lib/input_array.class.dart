class InputArray {
  String? arrayInput;
  List<int> intListArray = [];

  InputArray(this.arrayInput);

  castArray() {

    if (arrayInput!.isNotEmpty) {

      intListArray = arrayInput!.split(',').map<int>((e) {
        return int.parse(e);
      }).toList();
    }
  }
}

class Target {
  String target = '0';
  int number = 0;

  Target(this.target);

  castTarget() {

    try {

      return number = int.parse(target);
    } catch (e) {

      print('You must insert a valid target. Please try again.');
    }
  }
}
