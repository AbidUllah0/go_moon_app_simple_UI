import 'package:flutter/material.dart';
import 'package:go_moon_app/utils/App_Images/app_images.dart';
import 'package:go_moon_app/widgets/custom_dropdown_button.dart';

import '../../widgets/custom_text.dart';
import 'components/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<String> _values1 = ['James Web Station', 'Preneure Station'];
    List<String> _values2 = ['1', '2', '3', '4'];
    List<String> _values3 = ['Economy', 'Business', 'First', 'Private'];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(10),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: '#Go Moon',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomDropdownButton(
                        values: _values1,
                        width: width,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomDropdownButton(
                            values: _values2,
                            width: width * 0.45,
                          ),
                          CustomDropdownButton(
                            values: _values3,
                            width: width * 0.45,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: height * 0.55,
                  width: width * 0.65,
                  child: Image.asset(
                    AppImages.moonImg,
                    fit: BoxFit.cover,
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
