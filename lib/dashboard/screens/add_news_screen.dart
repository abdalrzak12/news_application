import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application1/components/button_component.dart';
import 'package:news_application1/dashboard/components/TextFromField_component.dart';
import 'package:news_application1/models/latest_news_model.dart';
import 'package:news_application1/providers/latest_news_provider.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class AddNewsScreen extends StatefulWidget {
  const AddNewsScreen({super.key});

  @override
  State<AddNewsScreen> createState() => _AddNewsScreenState();
}

class _AddNewsScreenState extends State<AddNewsScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController ControllerTitle = TextEditingController();
  final TextEditingController ControllerContent = TextEditingController();
  final TextEditingController ControllerSite = TextEditingController();
  final TextEditingController ControllerUrl = TextEditingController();
  String? selectedValue = 'local';

  final List<String> items = ['politics', 'sports', 'economy', 'local'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
          surfaceTintColor: AppColors.backgroundColor,
          shadowColor: Colors.black,
          title: Text(
            "add_news".tr,
            style: AppTextStyle.custom(
              fontSize: 28,
              fontFamily: 'Arabic',
              fontWeight: FontWeight.w600,
              color: AppColors.primaryBGC,
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 80),
                  TextFromFieldComponent(
                    controller: ControllerTitle,
                    hintText: "add title",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFromFieldComponent(
                    controller: ControllerContent,
                    hintText: "add content",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a content';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFromFieldComponent(
                    controller: ControllerSite,
                    hintText: "add site",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a site';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFromFieldComponent(
                    controller: ControllerUrl,
                    hintText: "add url",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a url';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    value: selectedValue,
                    items:
                        items.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),

                  SizedBox(height: 40),
                  ButtonComponent(
                    text: "add".tr,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final news = LatestNewsModel(
                          title: ControllerTitle.text.trim(),
                          content: ControllerContent.text.trim(),
                          site: ControllerSite.text.trim(),
                          url: ControllerUrl.text.trim(),
                          category: selectedValue ?? 'local',
                        );
                        await LatestNewsProvider.addNews(news);
                        Navigator.pop(context);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
