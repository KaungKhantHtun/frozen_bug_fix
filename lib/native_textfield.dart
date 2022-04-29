import 'package:flutter/material.dart';
import 'package:flutter_native_text_input/flutter_native_text_input.dart';

class NativeTextFieldPage extends StatefulWidget {
  const NativeTextFieldPage({Key? key}) : super(key: key);

  @override
  State<NativeTextFieldPage> createState() => _NativeTextFieldPageState();
}

class _NativeTextFieldPageState extends State<NativeTextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(34),
          height: 40,
          child: NativeTextInput(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
