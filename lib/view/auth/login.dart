// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:newsapp/view/auth/forgetpassword/forgotpassword.dart';
import 'package:newsapp/view/auth/signup.dart';

import '../Homepage/homepage.dart';



class Loginpage extends ConsumerStatefulWidget {
  const Loginpage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginpageState();
}

class _LoginpageState extends ConsumerState<Loginpage> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(35, 40, 35, 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Text(
                "Again!",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 42),
              ),
              Text(
                "Welcome back you've\nbeen missed",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // controller: passwordCtrl,
                // validator: FormBuilderValidators.compose([
                //   FormBuilderValidators.required(),
                //   FormBuilderValidators.minLength(6)
                // ]),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(Icons.mail), onPressed: () => () {}),
                  // prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Username',
                ),
                //obscureText: offsecureText1,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // controller: passwordCtrl,
                // validator: FormBuilderValidators.compose([
                //   FormBuilderValidators.required(),
                //   FormBuilderValidators.minLength(6)
                // ]),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(Icons.lock), onPressed: () => () {}),
                  // prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Password',
                ),
                //obscureText: offsecureText1,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    checkColor: Colors.white,
                    // fillColor: MaterialStateProperty.resolveWith(getColor),s
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    width: width * 0.15,
                  ),
                  InkWell(
                    child: Text(
                      'Forgot the Password?',
                      style: TextStyle(color: Colors.blue, fontSize: 10),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ForgotPassword()));
                    },
                  )
                ],
              ),
              Center(
                  child: SizedBox(
                      width: 330,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Homepage()));
                          },
                          child: Text("Login")))),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Or Continue with',
                  style: TextStyle(color: Color.fromARGB(255, 103, 102, 102)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 218, 215, 215))),
                    child: Center(child: Text('Facebook')
                        // Image.asset(
                        //   'assets/facebook.png',
                        //   height: 15,
                        //   width: 15,
                        // ),
                        ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 218, 215, 215))),
                    child: Center(child: Text('Google')
                        // Image.asset(
                        //   'assets/facebook.png',
                        //   height: 15,
                        //   width: 15,
                        // ),
                        ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                child: Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                      child: Text(
                        ' Signup',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Signuppage()));
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
