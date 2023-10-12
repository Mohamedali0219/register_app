import 'package:flutter/material.dart';

class TextFaildWedget extends StatelessWidget {
  const TextFaildWedget({
    super.key,
    required this.name,
    // required this.black,
    // required this.white,
    required this.textColor,
    required this.color,
    required this.type,
  });
  final String? name;
  final Color color;
  // final Color? black;
  // final Color? white;
  final TextInputType type;
  final Color textColor;
  final bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            name!,
            style: TextStyle(fontSize: 18, color: textColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            cursorColor: color,
            style: TextStyle(fontSize: 24, color: color),
            decoration: InputDecoration(
                focusColor: color,
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: color)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: color))),
            keyboardType: type,
          ),
        ),
      ],
    );
  }
}
