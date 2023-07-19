import 'package:flutter/material.dart';
class HoverButton extends StatefulWidget {
  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovering = false;
        });
      },
      child: ElevatedButton(
        onPressed: () {
          // الاستجابة عند الضغط على الزر
          print('Button Pressed!');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            _isHovering ? Colors.blue : Colors.green, // تغيير اللون عند التحوّل
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.all(20.0),
          ),
        ),
        child: Text('Hover over me!'),
      ),
    );
  }
}
