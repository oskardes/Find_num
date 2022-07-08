import 'package:flutter/material.dart';
import 'package:recrutation/models/model_result.dart';

class HomeViewModel {
  String title = 'Finding number';
  String labelText = 'Write list with comma and no space';
  String buttonText = 'Find';
  List<int> numbers = [];
  var oddNumber;
  var resultModel = ResultModel();

  List<int> convertTextFieldToList(TextEditingController controller) {
    var list = controller.text;
    final List<String> num = list.split(',');
    for (var i in num) {
      numbers.add(int.parse(i));
    }
    return numbers;
  }

  void findDiffNumber() {
    int len = numbers.length;
    if (numbers[0] % 2 == 0 && numbers[1] % 2 == 0) {
      if (len == 3) {
        oddNumber = numbers[2];
      } else {
        for (int i = 2; i < len; i++) {
          if (numbers[i] % 2 != 0) {
            oddNumber = numbers[i];
            break;
          }
        }
      }
    } else if (numbers[0] % 2 != 0 && numbers[1] % 2 != 0) {
      if (len == 3) {
        oddNumber = numbers[2];
      } else {
        for (int i = 2; i < len; i++) {
          if (numbers[i] % 2 == 0) {
            oddNumber = numbers[i];
            break;
          }
        }
      }
    } else if (numbers[0] % 2 == 0 && numbers[1] % 2 != 0) {
      if (numbers[2] % 2 == 0) {
        oddNumber = numbers[1];
      } else {
        oddNumber = numbers[0];
      }
    } else {
      if (numbers[2] % 2 == 0) {
        oddNumber = numbers[0];
      } else {
        oddNumber = numbers[1];
      }
    }
    saveResultToModel();
  }

  void saveResultToModel() {
    resultModel.result = oddNumber;
  }
}
