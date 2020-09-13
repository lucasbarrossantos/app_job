import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {

  final String text;
  const SectionTitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
