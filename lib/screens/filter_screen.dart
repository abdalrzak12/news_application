import 'package:flutter/material.dart';
import 'package:news_application1/components/card_filter.dart';
import 'package:news_application1/components/card_user_data.dart';
import 'package:news_application1/components/searth_componant.dart';
import 'package:news_application1/screens/home_screen.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CardUserData(),
              SizedBox(height: 16),
              SearthComponant(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              SizedBox(height: 26),
              //
              SizedBox(height: 26),
              //
              SizedBox(height: 28),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                      CardFilter(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
