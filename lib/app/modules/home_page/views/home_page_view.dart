import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star_news_application_repeat_1/app/modules/home_page/widget/build_list_tile_widget.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text('Star News', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            BuildListTileWidget(
              id: "satu",
              title: "asdaf",
              description: "sdfgds",
            ),
            BuildListTileWidget(
              id: "dua",
              title: "rhtr",
              description: "werw",
            ),
            BuildListTileWidget(
              id: "tiga",
              title: "afdsadsad",
              description: "yjmyu",
            ),
            BuildListTileWidget(
              id: "tiga",
              title: "afdsadsad",
              description: "yjmyu",
            ),
            BuildListTileWidget(
              id: "tiga",
              title: "afdsadsad",
              description: "yjmyu",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.CREATE_NEWS),
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
