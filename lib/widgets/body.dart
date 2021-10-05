// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'contact_button.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  final projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Flutter 2.0 Course',
      'subtitle': 'The best of the best!',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                            opacity: 0.4,
                            child: Image.asset('images/headshot.png')),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'I\'m Peter \n A software developer \n and freelancer',
                                style: TextStyle(
                                  fontSize: 34.5,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              ContactButton(
                                  buttonText: 'Drop me a line',
                                  icon: Icon(Icons.mail_outline),
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'My Projects',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: projectsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Card(
                            elevation: 3,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.work),
                                  title: Text(projectsList[index]['title']),
                                  subtitle:
                                      Text(projectsList[index]['subtitle']),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.network(
                                      projectsList[index]['image']),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 100,
        ),
      ],
    );
  }
}
