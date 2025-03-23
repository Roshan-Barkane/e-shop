// ignore_for_file: sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/app-constants.dart';
import 'sing-up-screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          body: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? Container(
                      height: 100,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Sign-In",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appMainColor,
                        ),
                      ),
                    )
                    : Container(
                      height: Get.height / 2,
                      decoration: BoxDecoration(
                        color: AppConstant.appMainColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "SignIn",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: AppConstant.appStatusBarColor,
                            ),
                          ),
                          SizedBox(height: 70),
                          Container(
                            margin: EdgeInsets.only(bottom: 30),
                            width: Get.width,
                            height: 180,
                            child: Lottie.asset(
                              'assets/images/e-shop-icon.json',
                            ),
                          ),
                        ],
                      ),
                    ),
                SizedBox(
                  height: Get.height / 5.5,
                  child: Column(
                    children: [
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
                        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
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
                Container(
                  width: Get.width,
                  margin: EdgeInsets.only(right: 25),
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: AppConstant.appMainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  alignment: Alignment.centerRight,
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
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppConstant.appStatusBarColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont't hava an Accont? ",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppConstant.appMainColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() => SingUpScreen());
                      },
                      child: Text(
                        'SingUp',
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
        );
      },
    );
  }
}
