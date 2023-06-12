// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, file_names

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/auth/forgetpassword/enterfield.dart';
import 'package:newsapp/view/auth/forgetpassword/resetpassword.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTP extends ConsumerStatefulWidget {
  const OTP({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OTPState();
}

class _OTPState extends ConsumerState<OTP> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => EnterField()));
                },
              ),
              Center(
                child: Text(
                  'OTP Verification',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 80,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                // onCompleted: (pin) {
                //   print("Completed: " + pin);
                // },
              ),
              SizedBox(
                height: height * 0.5,
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
                                    ResetPassword()));
                      },
                      child: Text('Submit')))
            ],
          ),
        ),
      ),
    );
  }
}
