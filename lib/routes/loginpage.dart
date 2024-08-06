// ignore_for_file: empty_constructor_bodies, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    InputBorder border = const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Color(0xffD9D9D9), width: 1));
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromRGBO(202, 255, 222, 1),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.black)),
          height: 500,
          width: 500,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text('Sign in',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'PTSERIFF')),
              ),
              Container(
                height: 2,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Email',
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'PTSERIFF'),
                          )),
                    ),
                    SizedBox(
                      width: 450,
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r"\s")),
                        ],
                        decoration: InputDecoration(
                            border: border,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Password',
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'PTSERIFF'),
                          )),
                    ),
                    SizedBox(
                      width: 450,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: border,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text.rich(TextSpan(
                          text: "Don't have an account? Sign up ",
                          style: TextStyle(fontSize: 19),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'here',
                              style: TextStyle(
                                  fontFamily: 'PTSERIFF',
                                  decoration: TextDecoration.underline,
                                  fontSize: 19),
                            )
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(202, 255, 222, 1)),
                          onPressed: () {
                            Navigator.popAndPushNamed(context, "/loading");
                          },
                          child: Text(
                            'Sign in!',
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
