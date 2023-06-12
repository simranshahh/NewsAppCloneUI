// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/auth/forgetpassword/enterfield.dart';
import 'package:newsapp/view/auth/login.dart';

class ForgotPassword extends ConsumerStatefulWidget {
  const ForgotPassword({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  bool checkboxValue = false;
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Loginpage()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '  Forgot\n  Password?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '     Don’t worry! it happens. Please select the \n     email or number associated with your \n     account.',
                style: TextStyle(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: height * 0.15,
                width: width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 225, 225),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/mail.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Via Email',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          Text('simransah314@gmail.com')
                        ],
                      ),
                      Checkbox(
                        checkColor: Colors.white,
                        // fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: checkboxValue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        onChanged: (bool? value) {
                          setState(() {
                            checkboxValue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: height * 0.15,
                width: width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 225, 225),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/sms.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Via Sms',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          Text('+977-9805367848')
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Checkbox(
                        checkColor: Colors.white,
                        // fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: checkValue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        onChanged: (bool? value) {
                          setState(() {
                            checkValue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              SizedBox(
                  height: height * 0.08,
                  width: width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    EnterField()));
                      },
                      child: Text('Submit')))
            ],
          ),
        ),
      ),
    );
  }
}
