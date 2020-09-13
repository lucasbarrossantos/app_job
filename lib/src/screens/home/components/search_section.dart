import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)),
              hintText: 'Encontre sua vaga aqui',
              isDense: true,
              suffixIcon: Icon(
                Icons.search,
                size: 32,
                color: Colors.white,
              ),
              filled: true,
              hintStyle: new TextStyle(color: Colors.white70),
              fillColor: Color(0xFF528188),
            ),
          ),
        ),
        SizedBox(width: 16),
        CircleAvatar(
          backgroundColor: Color(0xFF528188),
          radius: 25,
          child: Icon(
            Icons.filter_list,
            color: Colors.white,
            size: 32,
          ),
        )
      ],
    );
  }
}
