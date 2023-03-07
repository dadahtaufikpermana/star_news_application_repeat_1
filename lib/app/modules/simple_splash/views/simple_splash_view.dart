import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star_news_application_repeat_1/app/modules/home/widget/button_widget.dart';

import '../controllers/simple_splash_controller.dart';

class SimpleSplashView extends GetView<SimpleSplashController> {
  const SimpleSplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(15.0)),
          height: 700,
          width: 300,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Image.asset('assets/images/ic_star.png'),
              const SizedBox(height: 20),
              const Text(
                "Star News",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 200),
              Flexible(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [const ButtonWidget()],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
