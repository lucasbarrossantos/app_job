import 'package:flutter/material.dart';
import 'package:job/src/model/job.dart';

class CardJobItem extends StatelessWidget {
  final Job job;

  const CardJobItem(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 270,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Color(0xFFBDD0D3),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(job.logo),
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(width: 20),
                  Text(job.title, style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),),
                ],
              ),
              SizedBox(height: 22),
              buildRow('Local', 'Nível',
                  style2: TextStyle(fontWeight: FontWeight.bold),
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              buildRow(job.location, job.level),
              SizedBox(height: 12),
              buildRow('Salário', job.salary,
                  style2: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(String itemLeft, String itemRight,
          {TextStyle style, TextStyle style2}) =>
      Row(
        children: [
          Expanded(
            child: Text(
              itemLeft,
              style: style,
            ),
            flex: 50,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(itemRight, style: style2),
            flex: 50,
          ),
        ],
      );
}
