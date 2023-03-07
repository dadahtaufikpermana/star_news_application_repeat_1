import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_news_controller.dart';

class DetailNewsView extends GetView<DetailNewsController> {
  const DetailNewsView({Key? key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        elevation: 0.0,
        title: Text(
          'Detail News',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Color(0xE1E1E1D5), borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 5,
                  offset: Offset(0.0, 0.75)
              )
            ]),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text("aksjdhkjasfhkjasfdkas", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
              subtitle: Text("aksjdakjsaskjk", style: TextStyle(color: Colors.black, fontSize: 16)),
            )
      ),
    );
  }
}
