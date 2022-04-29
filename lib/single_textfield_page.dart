import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_text_input/flutter_native_text_input.dart';
import 'package:keyboard_name/keyboard_name.dart';

class SingleTextFieldPage extends StatefulWidget {
  const SingleTextFieldPage({Key? key}) : super(key: key);

  @override
  State<SingleTextFieldPage> createState() => _SingleTextFieldPageState();
}

class _SingleTextFieldPageState extends State<SingleTextFieldPage> {
  FocusNode nodeOne = FocusNode();

  customFocusNode() async {
    String? keyboardVendor = await KeyboardName.getVendorName;
    if (keyboardVendor!.contains('frozenkeyboard')) {
      return FocusNode(onKey: (node, event) {
        if (event.isKeyPressed(LogicalKeyboardKey.backspace)) {
          Future.delayed(Duration(milliseconds: 0))
              .then((value) => node.nextFocus());
          Future.delayed(Duration(microseconds: 0))
              .then((value) => node.requestFocus());
        }

        return KeyEventResult.ignored;
      });
    } else {
      return FocusNode();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _asssignNode();
  }

  _asssignNode() async {
    nodeOne = await customFocusNode();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frozen Keyboard Bug'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              focusNode: nodeOne,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text('With Delay')),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 1,
              width: 1,
              child: TextField(
              ),
            ),

          ],
        ),
      ),
    );
  }
}
