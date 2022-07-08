import 'package:flutter/material.dart';
import 'package:recrutation/view_models/result_view_model.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key, required this.value}) : super(key: key);
  var resultViewModel = ResultViewModel();
  var value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(resultViewModel.title)),
        body: Center(
          child: Text(
            value.toString(),
            style: const TextStyle(fontSize: 25),
          ),
        ));
  }
}
