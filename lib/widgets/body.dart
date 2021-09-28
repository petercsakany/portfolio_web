// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'contact_button.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

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
          child: Container(
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
