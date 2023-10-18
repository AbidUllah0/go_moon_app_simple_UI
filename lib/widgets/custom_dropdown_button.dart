import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownButton({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(53, 53, 53, 1.0),
      ),
      child: DropdownButton(
        onChanged: (Object? value) {},
        value: values.first,
        items: values.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
        underline: Container(),
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
