import 'package:flutter/material.dart';
import 'package:job/src/model/job.dart';
import 'package:job/src/screens/home/components/card_job_item.dart';
import 'package:job/src/screens/home/components/content_degrade.dart';
import 'package:job/src/screens/home/components/search_section.dart';
import 'package:job/src/screens/home/components/section_title.dart';

class HomeScreen extends StatelessWidget {
  final job = Job();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF192A2C),
        elevation: 0,
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Olá, Lucas',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                'Procurando por um emprego?',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ContentDegrade(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchSection(),
                SizedBox(height: 30),
                SectionTitle(text: 'Em alta agora'),
                SizedBox(height: 15),
                SizedBox(
                  height: 180,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: job.jobs.map((job) => CardJobItem(job)).toList(),
                  ),
                ),
                SizedBox(height: 30),
                SectionTitle(text: 'Adicionados recentemente'),
                SizedBox(height: 15),
                Expanded(
                  child: ListView(
                    children: job.recentJobs
                        .map((job) => Card(
                              margin: EdgeInsets.only(bottom: 16),
                              color: Color(0xFFBDD0D3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ListTile(
                                title: Text(job.title),
                                subtitle: Text(job.location),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(job.logo),
                                  backgroundColor: Colors.blue,
                                ),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(job.favorite ? Icons.favorite : Icons.favorite_border),
                                    Text(job.salary),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
