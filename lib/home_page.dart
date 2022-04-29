import 'package:flutter/material.dart';
import 'package:frozen_keyboard_error/multiple_textfiled_page.dart';
import 'package:frozen_keyboard_error/native_textfield.dart';
import 'package:frozen_keyboard_error/single_textfield_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MultipleTextFieldPage(),
                    ));
              },
              child: Text('Multiple TextField'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SingleTextFieldPage(),
                    ));
              },
              child: Text('Single TextField'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NativeTextFieldPage(),
                    ));
              },
              child: Text('Native TextField'),
            ),
          ],
        ),
      ),
    );
  }
}
