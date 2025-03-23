// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app-constants.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height / 2,
            decoration: BoxDecoration(color: AppConstant.appMainColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Welcome to E-Shop",
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
                  child: Lottie.asset('assets/images/e-shop-icon.json'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              'Happy Shoping',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 80),
          Container(
            child: Column(
              children: [
                Container(
                  width: Get.width / 1.3,
                  decoration: BoxDecoration(
                    color: AppConstant.appMainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    label: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Signin with Google',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppConstant.appStatusBarColor,
                        ),
                      ),
                    ),
                    icon: Image.asset(
                      'assets/images/google-icon.png',
                      width: 45,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: Get.width / 1.3,
                  decoration: BoxDecoration(
                    color: AppConstant.appMainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    label: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Signin with Email',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppConstant.appStatusBarColor,
                        ),
                      ),
                    ),
                    icon: Icon(Icons.email, size: 45.6, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
