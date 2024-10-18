// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store/core/auth_repo.dart/auth_repo.dart';
import 'package:flux_store/core/model/user_model.dart';
import 'package:flux_store/core/repository/post/post_db.dart';
import 'package:flux_store/screen/home/home_page.dart';
import 'package:flux_store/screen/login/login_page.dart';
import 'package:flux_store/utils/helper/validator.dart';
import 'package:gap/gap.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController confirmPass = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Gap(40),
                Text(
                  'Create',
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
                children: [
                  TextFormField(
                    validator: Validator.stringValidator,
                    controller: name,
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
                  Gap(20),
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
                  TextFormField(
                    controller: confirmPass,
                    validator: (value) {
                      if (value != pass.text) {
                        return 'Invalid pass';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
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
                        final user = UserModel(
                            name: name.text,
                            email: email.text,
                            uid: '',
                            lat: 0,
                            lan: 0);
                        await context
                            .read<AuthRepoImpl>()
                            .signUp(email.text, pass.text);
                        await context.read<PostDbImpl>().createUser(user);
                      }
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.white),
                    )),
                Gap(20),
                Text(
                  'or sign up with',
                  style: TextStyle(color: Colors.grey),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.apple),
                    IconButton(
                      onPressed: () async {
                        await context.read<AuthRepoImpl>().signInWithGoogle();
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      icon: Icon(
                        Icons.g_mobiledata,
                        size: 32,
                      ),
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
                Text('Already have account?'),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
