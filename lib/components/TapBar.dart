import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application1/components/body_saved_screens/economic.dart';
import 'package:news_application1/components/body_saved_screens/local.dart';
import 'package:news_application1/components/body_saved_screens/political.dart';
import 'package:news_application1/components/body_saved_screens/sports.dart';

class Tapbar extends StatelessWidget {
  const Tapbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: const Color.fromARGB(44, 0, 0, 0),
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  "local".tr,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'politics'.tr,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'economy'.tr,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'sports'.tr,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: TabBarView(
              children: [Local(), Political(), Economic(), Sports()],
            ),
          ),
        ],
      ),
    );
  }
}
