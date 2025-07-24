import 'package:flutter/material.dart';
import 'package:news_application1/components/card_saved.dart';
import 'package:news_application1/providers/tap_bar_provider.dart';
import 'package:news_application1/screens/news_display_screen.dart';
import 'package:provider/provider.dart';

class Economic extends StatelessWidget {
  const Economic({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TapBarProvider>(
      builder:
          (context, prov, child) => ListView.builder(
            itemCount: prov.listeconomy.length,
            itemBuilder: (context, index) {
              final date = prov.listeconomy[index];
              return CardSaved(
                text1: date.title,
                text2: date.content,
                img: date.urlImage,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => NewsDisplayScreen(
                            category: date.category,
                            content: date.content,
                            title: date.title,

                            urlImage: date.urlImage,
                            site: date.site,
                          ),
                    ),
                  );
              
                },
              );
            },
          ),
    );
  }
}
