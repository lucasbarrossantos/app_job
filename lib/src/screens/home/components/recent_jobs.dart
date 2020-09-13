import 'package:flutter/material.dart';
import 'package:job/src/model/job.dart';

class RecentJobs extends StatelessWidget {

  final List<Job> jobs;

  RecentJobs(this.jobs);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: jobs
            .map((job) => Card(
          margin: EdgeInsets.only(bottom: 16),
          color: Color(0xFFBDD0D3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            title: Text(
              job.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(job.location),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(job.logo),
              backgroundColor: Colors.blue,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(job.favorite
                    ? Icons.favorite
                    : Icons.favorite_border),
                Text(job.salary),
              ],
            ),
          ),
        ))
            .toList(),
      ),
    );
  }
}
