import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_application1/components/button_component.dart';
import 'package:news_application1/dashboard/components/TextFromField_component.dart';
import 'package:news_application1/models/notice_model.dart';
import 'package:news_application1/providers/notice_provider.dart';
import 'package:news_application1/theme/app_colors.dart';
import 'package:news_application1/theme/app_text_style.dart';

class AddNoticeScreen extends StatefulWidget {
  const AddNoticeScreen({super.key});

  @override
  State<AddNoticeScreen> createState() => _AddNoticeScreenState();
}

class _AddNoticeScreenState extends State<AddNoticeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController ControllerTitle = TextEditingController();
  final TextEditingController ControllerContent = TextEditingController();
  bool isChecked = false;
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
            "add_notice".tr,
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
                  SizedBox(height: 100),
                  TextFromFieldComponent(
                    controller: ControllerTitle,
                    hintText: "add title main",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a message title';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),

                  TextFromFieldComponent(
                    controller: ControllerContent,
                    hintText: "add Notice Content",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter notice content';
                      }
                      return null;
                    },
                  ),

                  Row(
                    children: [
                      Checkbox(
                        checkColor: AppColors.primaryBGC,
                        activeColor: AppColors.secondaryBlack,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        'important'.tr,
                        style: AppTextStyle.custom(
                          fontFamily: 'Arabic',
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryBGC,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  ButtonComponent(
                    text: "add".tr,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final newNotice = NoticeModel(
                          title: ControllerTitle.text.trim(),
                          content: ControllerContent.text.trim(),
                          type: isChecked,
                        );

                     await NoticeProvider.addNotice(newNotice);
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
