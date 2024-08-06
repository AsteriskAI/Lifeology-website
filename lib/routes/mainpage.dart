// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';

List<String> list = <String>[
  'Membership',
  'School - Annual',
  'School - Monthly',
  'Student - Annual',
  'Student - Monthly'
];

List<DropdownMenuItem<String>> dropdownItems1 = list.map((String value) {
  return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
  );
}).toList();

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String dropdownValue = list.first;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'logo.png',
                    scale: 3,
                  ),
                  Container(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Text(
                        'FEMERA Career Guidance Program',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(context, '/login');
                            },
                            icon: Icon(
                              Icons.person_2_outlined,
                              size: 50,
                            )),
                        Text('Sign up/in',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: 'PTSERIFF'))
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: const Color.fromRGBO(202, 255, 222, 1),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('About us',
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    Text('Events',
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    Text('Forms',
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    Text('Recommendation',
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    Text('Get 1-1 advice',
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 1,
                      style: TextStyle(fontFamily: 'PTSERIFF', fontSize: 25),
                      onChanged: (String? value) {},
                      items: dropdownItems1,
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/yep.png'),
                            fit: BoxFit.cover)),
                    height: 610,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            height: 500,
                            width: 500,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.5))),
                            child: Column(
                              children: [
                                Text(
                                  'We spend 1/3rd of our lives in our careers.',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontFamily: 'PTSERIFF'),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    'So you need to make sure we choose the right career, and we can help you with that.',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                Text(
                                  "Misalignment in careers lead to unhappiness, reduced productivity, lower income, lack of fulfillment, and a sense of purposelessness. The Oxford Martin School study in 2013 predicted that nearly 47% of jobs would change in the next two decades, so it is time you adapt.",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Form(
                                    key: _formKey,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                              hintText: 'Enter your email',
                                              hintStyle: TextStyle(
                                                  color: Colors.white)),
                                          style: TextStyle(color: Colors.white),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your email';
                                            }
                                            return null;
                                          },
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white
                                                      .withOpacity(0.1)),
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                          const SnackBar(
                                                              content: Text(
                                                                  'Sent!')));
                                                }
                                              },
                                              child: Text(
                                                'Get your free guide now!',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 1400,
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      color: const Color.fromRGBO(202, 255, 222, 1),
                      height: 300,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'meeting.png',
                              width: 400,
                            ),
                          ),
                          Text.rich(TextSpan(
                              text:
                                  'FEMERA holds yearly conferences to motivation\nstudents and schools as well as raise awareness\nregarding the issue. ',
                              style: TextStyle(fontSize: 35),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Learn more here',
                                    style: TextStyle(
                                        fontSize: 35,
                                        decoration: TextDecoration.underline))
                              ]))
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      color: const Color.fromRGBO(202, 255, 222, 1),
                      height: 300,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'quiz.png',
                              width: 400,
                            ),
                          ),
                          Text.rich(TextSpan(
                              text:
                                  "Discover the unique strengths and learning style\nof each student through engaging personality quizzes.\nFERMERA tailors educational experiences to individual\nneeds, ensuring maximum engagement and academic\nsuccess. ",
                              style: TextStyle(fontSize: 35),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Learn more here',
                                    style: TextStyle(
                                        fontSize: 35,
                                        decoration: TextDecoration.underline))
                              ]))
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      color: const Color.fromRGBO(202, 255, 222, 1),
                      height: 300,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'event.png',
                              width: 400,
                            ),
                          ),
                          Text.rich(TextSpan(
                              text:
                                  "Gain practical skills and expert advice to boost\nyour career. Our interactive events cover today's\nmost in-demand topics. ",
                              style: TextStyle(fontSize: 35),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Learn more here',
                                    style: TextStyle(
                                        fontSize: 35,
                                        decoration: TextDecoration.underline))
                              ]))
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      color: const Color.fromRGBO(202, 255, 222, 1),
                      height: 300,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'club.png',
                              width: 400,
                            ),
                          ),
                          Text.rich(TextSpan(
                              text:
                                  "Create or join nationwide clubs supported by our\nexperts. Explore your passions and connect with\nlike-minded students across the country. ",
                              style: TextStyle(fontSize: 35),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Learn more here',
                                    style: TextStyle(
                                        fontSize: 35,
                                        decoration: TextDecoration.underline))
                              ]))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 270,
                    color: const Color.fromRGBO(202, 255, 222, 1),
                  ),
                  Image.asset("space.png"),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Contact us',
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Email:- femera@gmail.com',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Phone no.: 123 456 7890',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Instagram:- #Femera',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Facebook:-Femera Career Guidance Program',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(right: 100, child: Image.asset("person.png"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
