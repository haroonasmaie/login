import 'package:flutter/material.dart';

class FieldText extends StatelessWidget {
  const FieldText(
      {super.key,
      required this.hint,
      this.icon,
      this.mycontroller,
      this.valid});

  final String hint;
  final Widget? icon;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hint,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
      ),
    );
  }
}
