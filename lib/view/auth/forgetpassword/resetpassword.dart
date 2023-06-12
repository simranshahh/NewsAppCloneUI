// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/auth/forgetpassword/OTP.dart';

import 'Newpwsuccessful.dart';

class ResetPassword extends ConsumerStatefulWidget {
  const ResetPassword({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends ConsumerState<ResetPassword> {
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
                          builder: (BuildContext context) => OTP()));
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
              Text(
                '  New Password',
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                // controller: passwordCtrl,
                // validator: FormBuilderValidators.compose([
                //   FormBuilderValidators.required(),
                //   FormBuilderValidators.minLength(6)
                // ]),
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                //obscureText: offsecureText1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '  Confirm New Password',
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                // controller: passwordCtrl,
                // validator: FormBuilderValidators.compose([
                //   FormBuilderValidators.required(),
                //   FormBuilderValidators.minLength(6)
                // ]),
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                //obscureText: offsecureText1,
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
                                    Newpwsuccessful()));
                      },
                      child: Text('Submit')))
            ],
          ),
        ),
      ),
    );
  }
}
