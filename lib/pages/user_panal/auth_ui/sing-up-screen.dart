// ignore_for_file: sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import '../../../utils/app-constants.dart';
import 'sign-in-screen.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 80,

                    color: AppConstant.appMainColor,
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        "E-Shop",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appStatusBarColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 80),
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: AppConstant.appMainColor,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              cursorColor: AppConstant.appSecondryColor,
                              keyboardType: TextInputType.name,

                              decoration: InputDecoration(
                                hintText: 'Enter Name',
                                prefixIcon: Icon(Icons.person),

                                contentPadding: EdgeInsets.only(
                                  top: 2.0,
                                  left: 8.0,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                        ),
                        Container(
                          width: Get.width,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextFormField(
                              cursorColor: AppConstant.appSecondryColor,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Enter Phone',
                                prefixIcon: Icon(Icons.phone),
                                contentPadding: EdgeInsets.only(
                                  top: 2.0,
                                  left: 8.0,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 20, right: 20),
                        ),
                        Container(
                          width: Get.width,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              cursorColor: AppConstant.appSecondryColor,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Enter Email',
                                prefixIcon: Icon(Icons.email),
                                contentPadding: EdgeInsets.only(
                                  top: 2.0,
                                  left: 8.0,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 20, right: 20),
                        ),
                        Container(
                          width: Get.width,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextFormField(
                              cursorColor: AppConstant.appSecondryColor,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: 'Enter Password',
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: Icon(Icons.visibility_off),
                                contentPadding: EdgeInsets.only(
                                  top: 2.0,
                                  left: 8.0,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 20, right: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: Get.width / 2,

                    decoration: BoxDecoration(
                      color: AppConstant.appMainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppConstant.appStatusBarColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already hava an Accont? ",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppConstant.appMainColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(() => SignInScreen());
                        },
                        child: Text(
                          'SignIn',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppConstant.appMainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
