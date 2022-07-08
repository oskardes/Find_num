import 'package:flutter/material.dart';
import 'package:recrutation/view_models/home_view_model.dart';
import 'package:recrutation/views/result_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var homeViewModel = HomeViewModel();
  final TextEditingController listController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeViewModel.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: listController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: Text(homeViewModel.labelText),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                homeViewModel.convertTextFieldToList(listController);
                homeViewModel.findDiffNumber();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ResultPage(value: homeViewModel.oddNumber)));
              },
              child: Text(homeViewModel.buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
