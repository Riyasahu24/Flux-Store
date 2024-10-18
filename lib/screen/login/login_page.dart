// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store/core/auth_repo.dart/auth_repo.dart';
import 'package:flux_store/screen/home/home_page.dart';
import 'package:flux_store/screen/login/forget_password.dart';
import 'package:flux_store/screen/login/signup.dart';
import 'package:flux_store/utils/helper/validator.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Gap(40),
                Text(
                  'Log into',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Your account',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: email,
                    validator: (value) {
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!)) {
                        return 'Enter valid email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
                  Gap(20),
                  TextFormField(
                    controller: pass,
                    validator: Validator.stringValidator,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
                  Gap(20),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => ForgetPassword(),
                            ));
                      },
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await context
                            .read<AuthRepoImpl>()
                            .signIn(email.text, pass.text);
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      }
                    },
                    child: Text(
                      'LOG IN',
                      style: TextStyle(color: Colors.white),
                    )),
                Gap(20),
                Text(
                  'or log in with',
                  style: TextStyle(color: Colors.grey),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.apple),
                    Icon(
                      Icons.g_mobiledata,
                      size: 32,
                    ),
                    Icon(
                      Icons.facebook_outlined,
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Signup(),
                          ));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
