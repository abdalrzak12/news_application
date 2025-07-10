import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application1/components/button_home_component.dart';
import 'package:news_application1/components/card_home_main_component.dart';
import 'package:news_application1/components/card_home_secondary_component.dart';
import 'package:news_application1/components/card_user_data.dart';
import 'package:news_application1/components/searth_componant.dart';
import 'package:news_application1/providers/button_home_provider.dart';
import 'package:news_application1/providers/latest_news_provider.dart';
import 'package:news_application1/screens/filter_screen.dart';
import 'package:news_application1/screens/news_display_screen.dart';
import 'package:provider/provider.dart';

class BodyHomeComponent extends StatelessWidget {
  const BodyHomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardUserData(),
        SizedBox(height: 16),
        SearthComponant(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FilterScreen()),
            );
          },
        ),
        SizedBox(height: 24),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Consumer<LatestNewsProvider>(
                  builder: (context, prov, child) {
                    return SizedBox(
                      height: 210,
                      child: PageView.builder(
                        itemCount: prov.news.length,
                        itemBuilder: (context, index) {
                          return CardHomeMainComponent(
                            category: prov.news[index].category.tr,
                            title: prov.news[index].title,
                            time: prov.news[index].time,
                            urlImage: prov.news[index].url,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => NewsDisplayScreen(
                                        category: prov.news[index].category.tr,
                                        title: prov.news[index].title,
                                        time: prov.news[index].time,
                                        urlImage: prov.news[index].url,
                                        content: prov.news[index].content,
                                        site: prov.news[index].site,
                                      ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 26),
                Consumer<ButtonHomeProvider>(
                  builder:
                      (context, prov, child) => SizedBox(
                        height: 35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: prov.titles.length,
                          itemBuilder: (context, index) {
                            final x = prov.selectedIndex;
                            return Row(
                              children: [
                                ButtonHomeComponent(
                                  title: prov.titles[index],
                                  specific: x == index,
                                  onTap: () {
                                    prov.select(index);
                                  },
                                ),
                                SizedBox(width: 16),
                              ],
                            );
                          },
                        ),
                      ),
                ),

                SizedBox(height: 24),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return CardHomeSecondaryComponent();
                    },
                  ),
                ),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
