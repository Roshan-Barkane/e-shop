// ignore_for_file: file_names

import 'dart:async';

import 'package:e_shop/pages/user_panal/auth_ui/sing-up-screen.dart';
import 'package:e_shop/utils/app-constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Get.offAll(() => SingUpScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appMainColor,
      appBar: AppBar(backgroundColor: AppConstant.appMainColor, elevation: 0),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: Get.width,
                height: 150,
                alignment: Alignment.center,
                child: Lottie.asset('assets/images/e-shop-icon.json'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: Get.width,
              alignment: Alignment.center,
              child: Text(
                AppConstant.appCreatedBy,
                style: TextStyle(color: AppConstant.appStatusBarColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
