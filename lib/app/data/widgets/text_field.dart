import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final Size size;
  const CTextField(
      {super.key,
      required this.title,
      required this.hintText,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: size.height / 80,
        ),
        TextFormField(
          cursorColor: Colors.blue,
          maxLines: 1,
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            focusColor: Colors.blue,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}
