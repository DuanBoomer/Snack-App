// import 'dart:html';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:snackapp/UserFunnelPages/Elements/TextFieldElement.dart';

class FormElement extends StatefulWidget {
  Color background;
  List<String> hintTexts;

  FormElement({
    super.key,
    required this.background,
    required this.hintTexts,
  });

  @override
  FormElementState createState() => FormElementState();
}

class FormElementState extends State<FormElement> {
  List<Widget> textFields(List<String> hintTexts) {
    List<Widget> fields = [];
    for (var text in hintTexts) {
      fields.add(TextFieldElement(
        hintText: text,
      ));
    }

    return fields;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.background,
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.shade900,
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(2, 2),
              // inset: true,
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 4,
              spreadRadius: 2,
              offset: Offset(-2, -2),
              // inset: true,
            ),
          ]),
      child: Column(
        children: textFields(widget.hintTexts),
      ),
    );
  }
}
