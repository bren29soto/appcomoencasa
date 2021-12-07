import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmailInput extends StatefulWidget {
  String hotmail;
  final Function(String) onHotmailChange;
  EmailInput({
    Key? key,
    required this.hotmail,
    required this.onHotmailChange,
  }) : super(key: key);
  @override
  _EmailInputState createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 30,
      onChanged: (value) {
        widget.onHotmailChange(value);
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(FontAwesomeIcons.envelope),
        hintText: "Ingrese un hotmail",
        labelText: "Hotmail",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
