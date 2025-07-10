import 'package:flutter/material.dart';
import 'package:news_application1/screens/economic.dart';
import 'package:news_application1/screens/local.dart';
import 'package:news_application1/screens/political.dart';
import 'package:news_application1/screens/sports.dart';

class Tapbar extends StatelessWidget {
  const Tapbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 87),
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: const Color.fromARGB(44, 0, 0, 0),
                indicatorColor: Colors.black,
                tabs: const [
                  Tab(
                    child: Text(
                      'محلي',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'سياسي',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'اقتصادي',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'رياضة',
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
                  children: const [Local(), Political(), Economic(), Sports()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
