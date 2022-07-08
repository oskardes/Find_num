import 'package:flutter/material.dart';
import 'package:recrutation/view_models/result_view_model.dart';
import 'package:recrutation/views/home_view.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key, required this.value}) : super(key: key);
  var resultViewModel = ResultViewModel();
  var value;

  void returnToHomePage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(resultViewModel.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value.toString(),
                style: const TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false);
                  },
                  child: const Text('Return to Home page'))
            ],
          ),
        ));
  }
}
