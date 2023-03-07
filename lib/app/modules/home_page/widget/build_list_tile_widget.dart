import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_pages.dart';

class BuildListTileWidget extends StatelessWidget {
  const BuildListTileWidget(
      {Key? key,
      required this.id,
      required this.title,
      required this.description})
      : super(key: key);

  final String id, title, description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.DETAIL_NEWS),
      child: Container(
        margin: EdgeInsets.all(24),
        width: 342,
        height: 138,
        decoration: BoxDecoration(
          color: Color(0xE1E1E1D5),
          borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 5,
                  offset: Offset(0.0, 0.75)
              )
            ]
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 14,
            ),
            Text(description)
          ],
        ),
      ),
    );
  }
}
