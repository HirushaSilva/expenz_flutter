import 'package:expenz_flutter/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  const CustomButtom({
    super.key,
    required this.buttonName,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: kWhite,
          ),
        ),
      ),
    );
  }
}
